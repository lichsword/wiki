.class Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;
.super Ljava/lang/Exception;
.source "ApiConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApiNetWorkTimeoutException"
.end annotation


# instance fields
.field isHttps:Z

.field mTimeout:I

.field final synthetic this$0:Landroid/taobao/apirequest/ApiConnector;


# direct methods
.method public constructor <init>(Landroid/taobao/apirequest/ApiConnector;Ljava/lang/String;IZ)V
    .locals 1
    .parameter
    .parameter "message"
    .parameter "timeout"
    .parameter "https"

    .prologue
    .line 1939
    iput-object p1, p0, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;->this$0:Landroid/taobao/apirequest/ApiConnector;

    .line 1940
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1938
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;->isHttps:Z

    .line 1941
    iput p3, p0, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;->mTimeout:I

    .line 1942
    iput-boolean p4, p0, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkTimeoutException;->isHttps:Z

    .line 1943
    return-void
.end method
