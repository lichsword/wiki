.class public Lcom/taobao/statistic/b/a/a;
.super Lcom/taobao/statistic/module/a/a;
.source "GrayReleaseBusiness.java"


# static fields
.field private static iA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/taobao/statistic/b/a/a$1;

    invoke-direct {v0}, Lcom/taobao/statistic/b/a/a$1;-><init>()V

    sput-object v0, Lcom/taobao/statistic/b/a/a;->iA:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 0
    .parameter "pRuntime"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/taobao/statistic/module/a/a;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 28
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "pContent"

    .prologue
    .line 72
    if-eqz p1, :cond_2

    .line 73
    const/4 v3, 0x0

    .line 75
    .local v3, lContentString:Ljava/lang/String;
    :try_start_0
    const-string v7, "content"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 79
    :goto_0
    if-eqz v3, :cond_2

    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, lContentJson:Lorg/json/JSONObject;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1           #lContentJson:Lorg/json/JSONObject;
    .local v2, lContentJson:Lorg/json/JSONObject;
    move-object v1, v2

    .line 86
    .end local v2           #lContentJson:Lorg/json/JSONObject;
    .restart local v1       #lContentJson:Lorg/json/JSONObject;
    :goto_1
    if-eqz v3, :cond_2

    .line 88
    :try_start_2
    const-string v7, "gc"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 89
    const-string v7, "gc"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, lGetConfigURL:Ljava/lang/String;
    invoke-static {v5}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 91
    iget-object v7, p0, Lcom/taobao/statistic/b/a/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v7}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/taobao/statistic/core/q;->O(Ljava/lang/String;)V

    .line 95
    .end local v5           #lGetConfigURL:Ljava/lang/String;
    :cond_0
    const-string v7, "ur"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 96
    const-string v7, "ur"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, lUploadRecordConfigURL:Ljava/lang/String;
    invoke-static {v6}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 99
    iget-object v7, p0, Lcom/taobao/statistic/b/a/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v7}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/taobao/statistic/core/q;->N(Ljava/lang/String;)V

    .line 103
    .end local v6           #lUploadRecordConfigURL:Ljava/lang/String;
    :cond_1
    const-string v7, "er"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    const-string v7, "er"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, lExceptionReportURL:Ljava/lang/String;
    invoke-static {v4}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 107
    iget-object v7, p0, Lcom/taobao/statistic/b/a/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v7}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/taobao/statistic/core/q;->P(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 118
    .end local v1           #lContentJson:Lorg/json/JSONObject;
    .end local v3           #lContentString:Ljava/lang/String;
    .end local v4           #lExceptionReportURL:Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 76
    .restart local v3       #lContentString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #lContentJson:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 84
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 112
    .end local v0           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 113
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private e()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/taobao/statistic/b/a/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    const-string v1, "http://adash.m.taobao.com/rest/ur"

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/q;->N(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/taobao/statistic/b/a/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    const-string v1, "http://adash.m.taobao.com/rest/gc"

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/q;->O(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/taobao/statistic/b/a/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    const-string v1, "http://adash.m.taobao.com/rest/er"

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/q;->P(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/taobao/statistic/b/a/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bX()Lcom/taobao/statistic/module/a/b;

    move-result-object v0

    const-string v1, "B01N8"

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/module/a/b;->U(Ljava/lang/String;)V

    .line 131
    return-void
.end method


# virtual methods
.method public aC()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/taobao/statistic/b/a/a;->iA:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "configurationName"
    .parameter "pConfiguration"

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, jValue:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #jValue:Lorg/json/JSONObject;
    .local v2, jValue:Lorg/json/JSONObject;
    move-object v1, v2

    .line 56
    .end local v2           #jValue:Lorg/json/JSONObject;
    .restart local v1       #jValue:Lorg/json/JSONObject;
    :goto_0
    invoke-direct {p0, v1}, Lcom/taobao/statistic/b/a/a;->a(Lorg/json/JSONObject;)V

    .line 57
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public l(Ljava/lang/String;)V
    .locals 2
    .parameter "responseText"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/taobao/statistic/b/a/a;->e()V

    .line 62
    iget-object v0, p0, Lcom/taobao/statistic/b/a/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bX()Lcom/taobao/statistic/module/a/b;

    move-result-object v0

    const-string v1, "B01N8"

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/module/a/b;->U(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 32
    iget-object v1, p0, Lcom/taobao/statistic/b/a/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bX()Lcom/taobao/statistic/module/a/b;

    move-result-object v1

    const-string v2, "B01N8"

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/module/a/b;->T(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    .local v0, lLocalBusiness:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0, v0}, Lcom/taobao/statistic/b/a/a;->a(Lorg/json/JSONObject;)V

    .line 37
    :cond_0
    return-void
.end method
