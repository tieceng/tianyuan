#include <iostream>
#include <string>
#include "json.hpp"
#include <chrono>
#include <curl/curl.h>

using json = nlohmann::json;
using namespace std::chrono;

//回调函数，用于处理 libcurl 的响应数据
size_t WriteCallback(void* contents, size_t size, size_t nmemb, std::string* respons){
    respons->append((char*)contents, size * nmemb);
    return size * nmemb;
}
//发送 POST 请求并返回响应
std::string SendPostRequest(const std::string& url, const std::string& data){
    CURL* curl = curl_easy_init();
    if(curl){
        //设置 libcurl
        curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, data.c_str());
        curl_easy_setopt(curl, CURLOPT_POSTFIELDSIZE, data.length());

        std::string response_data;
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response_data);

        //发送请求
        CURLcode res = curl_easy_perform(curl);
        if(res != CURLE_OK){
            std::cerr << "curl_easy_perform() failed:" << curl_easy_strerror(res) << std::endl;
        }

        curl_easy_cleanup(curl);
        return  response_data;

    }else{
        std::cerr << "Failed to initialize libcurl " << std::endl;
        return "";
    }
}

std::string chatqwen(const std::string& message){
    //构造请求函数
    json datas = {
            {"temprature" , 0.1},
            {"max_tokends" , 4000},
            {"rid" , 31000},
            {"model" , "qwen2"},
            {"messages" , json::array({
                                              {{"role","user"}, {"content",message}}
                                      })},
    };
    //设置请求头
    std::string data = datas.dump();

    std::string url = "http://llm-yizhuang.multimedia.wml.weibo.com/mm-wb-ml-hotmblog/qwen15-72b-chat-weibo-search-topic-65e83a5c/generate";
//    std::string url = "http://minisearch.chatglm3-6b-32k.wml.weibo.com/mm-wb-ml-hotmblog/chatglm3-6b-32k/generate";
    std::string response_data = SendPostRequest(url, data);

    //解析响应数据
    std::string txt;
    try{
        json res = json::parse(response_data);
        txt = res["choices"][0]["message"]["content"];
    }catch(const std::exception& e){
        std::cerr<< " Error parsing json : "<< e.what() << std::endl;
    }

    return  txt;
}

int main(int argc, char* argv[]){

    std::cout << argc << std::endl;

    if(argc <2 ){
        std::cerr << " Usage: "<< argv[0] << " <msg> " << std::endl;
        return  1;
    }

    std::string encode_msg = argv[1];//才C++ 中不需要转移 html实体
    std::string bash_prompt = "我对你有以下要求：" \
             "1.我要求你必须英文回复我" \
             "2.你现在是文字情感专家和画面描述专家,给你一段自然语言，" \
             "你理解这段语言并且做出详细的情绪表达、场景、天气与背景或者场景等元素描述的回复，" \
             "可以根据你自身的能力自由发挥，" \
             "让人可以增加注意力到画面当中,画面中不要有人类,直接回复画面内容,不需要有聊天互动，" \
             "将画面以宠物狗的形式表达出来,描述宠物狗的时候使用a dog 代替具体狗的品种毛色等，回复的内容精炼一些，将场景具体为某些元素，比如描述天空的元素是蓝天、星空，描述光线是柔美的光等" \
             "自然语言是：";
    std::string message = bash_prompt + encode_msg;
    std::cout << message << std::endl;

    auto start_time = high_resolution_clock::now();
    std::string response = chatqwen(message);

    auto end_time = high_resolution_clock::now();

    auto duration = duration_cast<seconds>(end_time - start_time);

    std::cout<<response << std::endl;
    std::cout << "程序运行时间：  " << duration.count() <<"秒" << std::endl;

    return 0;
}