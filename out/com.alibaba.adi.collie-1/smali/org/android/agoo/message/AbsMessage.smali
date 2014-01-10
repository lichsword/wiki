.class public abstract Lorg/android/agoo/message/AbsMessage;
.super Ljava/lang/Object;
.source "AbsMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsMessage"


# instance fields
.field protected volatile appKey:Ljava/lang/String;

.field protected volatile appSecret:Ljava/lang/String;

.field protected volatile context:Landroid/content/Context;

.field private volatile deviceToken:Ljava/lang/String;

.field private volatile handler:Lorg/android/agoo/message/MessageHandler;

.field protected ttId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/android/agoo/message/MessageHandler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/android/agoo/message/AbsMessage;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lorg/android/agoo/message/AbsMessage;->handler:Lorg/android/agoo/message/MessageHandler;

    .line 50
    return-void
.end method

.method private handlerMessageError(Ljava/lang/String;)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 107
    const-string v0, "ER_PARAM_DEVICE_TOKEN"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "ERROR_DEVICETOKEN_NULL"

    invoke-virtual {p0, v0}, Lorg/android/agoo/message/AbsMessage;->handlerError(Ljava/lang/String;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v0, "ER_BIZ_NO_MULTIPLEX"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    const-string v0, "ERROR_DEVICETOKEN_NULL"

    invoke-virtual {p0, v0}, Lorg/android/agoo/message/AbsMessage;->handlerError(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    const-string v0, "API_STOP_SERVICE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const-string v0, "ERRCODE_AUTH_REJECT"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const-string v0, "ERRCODE_APP_ACCESS_API_FAIL"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const-string v0, "ERR_SID_INVALID"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "ER_PARAM"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const-string v0, "FAIL"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const-string v0, "FAIL_SYS_PARAM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-string v0, "FAIL_SYS_SERVLET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const-string v0, "FAIL_SYS_HSF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private handlerMessageSuccess(Ljava/lang/String;)V
    .locals 9
    .parameter "data"

    .prologue
    .line 147
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, json:Lorg/json/JSONObject;
    const-string v7, "message_list"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 149
    .local v3, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 150
    .local v4, len:I
    const/4 v7, 0x5

    if-lt v4, v7, :cond_0

    .line 151
    iget-object v7, p0, Lorg/android/agoo/message/AbsMessage;->context:Landroid/content/Context;

    invoke-static {v7}, Lorg/android/agoo/log/UTHelper;->messageSizeLarge(Landroid/content/Context;)V

    .line 153
    :cond_0
    const/4 v5, 0x0

    .line 154
    .local v5, message:Ljava/lang/String;
    const/4 v6, 0x0

    .line 155
    .local v6, tmpJson:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 156
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 157
    if-nez v6, :cond_2

    .line 155
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 161
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 164
    iget-object v7, p0, Lorg/android/agoo/message/AbsMessage;->handler:Lorg/android/agoo/message/MessageHandler;

    invoke-interface {v7, v5}, Lorg/android/agoo/message/MessageHandler;->onHandleMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    const/4 v6, 0x0

    goto :goto_1

    .line 167
    .end local v1           #i:I
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    .end local v4           #len:I
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #tmpJson:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Lorg/json/JSONException;
    iget-object v7, p0, Lorg/android/agoo/message/AbsMessage;->context:Landroid/content/Context;

    invoke-static {v7, p1}, Lorg/android/agoo/log/UTHelper;->messageParseErrorLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    const-string v7, "AbsMessage"

    const-string v8, "handlerMessage1"

    invoke-static {v7, v8, v0}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .end local v0           #e:Lorg/json/JSONException;
    :cond_3
    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method protected getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/android/agoo/message/AbsMessage;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/android/agoo/message/AbsMessage;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/android/agoo/message/AbsMessage;->deviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTtId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/android/agoo/message/AbsMessage;->ttId:Ljava/lang/String;

    return-object v0
.end method

.method protected handlerError(Ljava/lang/String;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 85
    iget-object v0, p0, Lorg/android/agoo/message/AbsMessage;->handler:Lorg/android/agoo/message/MessageHandler;

    invoke-interface {v0, p1}, Lorg/android/agoo/message/MessageHandler;->onHandleError(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected handlerMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, result:Lorg/android/agoo/net/mtop/Result;
    :try_start_0
    invoke-static {p1}, Lorg/android/agoo/net/mtop/MtopResponseHelper;->parse(Ljava/lang/String;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/android/agoo/message/AbsMessage;->handlerMessageSuccess(Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    iget-object v2, p0, Lorg/android/agoo/message/AbsMessage;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->getRetCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/UTHelper;->messageHttpErrorLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->getRetCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/android/agoo/message/AbsMessage;->handlerMessageError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/android/agoo/message/AbsMessage;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lorg/android/agoo/log/UTHelper;->messageParseErrorLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    const-string v2, "AbsMessage"

    const-string v3, "handlerMessage"

    invoke-static {v2, v3, v0}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public abstract ping()Z
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .parameter "appKey"

    .prologue
    .line 61
    iput-object p1, p0, Lorg/android/agoo/message/AbsMessage;->appKey:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "appSecret"

    .prologue
    .line 53
    iput-object p1, p0, Lorg/android/agoo/message/AbsMessage;->appSecret:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setDeviceToken(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceToken"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/android/agoo/message/AbsMessage;->deviceToken:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setTtId(Ljava/lang/String;)V
    .locals 0
    .parameter "ttId"

    .prologue
    .line 73
    iput-object p1, p0, Lorg/android/agoo/message/AbsMessage;->ttId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public abstract start()V
.end method
