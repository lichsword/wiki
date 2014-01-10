.class Landroid/taobao/apirequest/ApiConnector$2;
.super Ljava/lang/Object;
.source "ApiConnector.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/apirequest/ApiConnector;->dataConnect()Landroid/taobao/apirequest/ApiResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/apirequest/ApiConnector;


# direct methods
.method constructor <init>(Landroid/taobao/apirequest/ApiConnector;)V
    .locals 0
    .parameter

    .prologue
    .line 1078
    iput-object p1, p0, Landroid/taobao/apirequest/ApiConnector$2;->this$0:Landroid/taobao/apirequest/ApiConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .parameter "hostname"
    .parameter "session"

    .prologue
    .line 1081
    const/4 v0, 0x1

    return v0
.end method
