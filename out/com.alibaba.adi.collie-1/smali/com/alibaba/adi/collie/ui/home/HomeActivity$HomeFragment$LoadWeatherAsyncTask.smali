.class Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;
.super Landroid/os/AsyncTask;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadWeatherAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/alibaba/adi/collie/model/service/WeatherData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 772
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;-><init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/alibaba/adi/collie/model/service/WeatherData;
    .locals 3
    .parameter "objects"

    .prologue
    .line 775
    const-string v2, "weather_data"

    invoke-static {v2}, Lcom/alibaba/adi/collie/util/FileUtil;->readStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, weatherStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getWeatherDataFromJsonStr(Ljava/lang/String;)Lcom/alibaba/adi/collie/model/service/WeatherData;

    move-result-object v0

    .line 777
    .local v0, weatherData:Lcom/alibaba/adi/collie/model/service/WeatherData;
    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;->doInBackground([Ljava/lang/Object;)Lcom/alibaba/adi/collie/model/service/WeatherData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/alibaba/adi/collie/model/service/WeatherData;)V
    .locals 1
    .parameter "weatherData"

    .prologue
    .line 782
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 783
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->setWeatherData(Lcom/alibaba/adi/collie/model/service/WeatherData;)V
    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$1(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;Lcom/alibaba/adi/collie/model/service/WeatherData;)V

    .line 784
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/alibaba/adi/collie/model/service/WeatherData;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;->onPostExecute(Lcom/alibaba/adi/collie/model/service/WeatherData;)V

    return-void
.end method
