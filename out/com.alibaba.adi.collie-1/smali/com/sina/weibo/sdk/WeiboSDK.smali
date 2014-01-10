.class public Lcom/sina/weibo/sdk/WeiboSDK;
.super Ljava/lang/Object;
.source "WeiboSDK.java"


# static fields
.field private static weibo:Lcom/sina/weibo/sdk/api/IWeiboAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/sina/weibo/sdk/WeiboSDK;->weibo:Lcom/sina/weibo/sdk/api/IWeiboAPI;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/IWeiboAPI;
    .locals 1
    .parameter "context"
    .parameter "appKey"

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sina/weibo/sdk/WeiboSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sina/weibo/sdk/api/IWeiboAPI;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized createWeiboAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sina/weibo/sdk/api/IWeiboAPI;
    .locals 3
    .parameter "context"
    .parameter "appKey"
    .parameter "isDownWeibo"

    .prologue
    .line 25
    const-class v1, Lcom/sina/weibo/sdk/WeiboSDK;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/WeiboSDK;->weibo:Lcom/sina/weibo/sdk/api/IWeiboAPI;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/sina/weibo/sdk/api/WeiboApiImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, p2}, Lcom/sina/weibo/sdk/api/WeiboApiImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sina/weibo/sdk/WeiboSDK;->weibo:Lcom/sina/weibo/sdk/api/IWeiboAPI;

    .line 28
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/WeiboSDK;->weibo:Lcom/sina/weibo/sdk/api/IWeiboAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
