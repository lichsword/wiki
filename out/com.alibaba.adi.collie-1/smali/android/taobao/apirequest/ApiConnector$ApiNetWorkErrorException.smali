.class Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;
.super Ljava/lang/Exception;
.source "ApiConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApiNetWorkErrorException"
.end annotation


# instance fields
.field mTimeout:I

.field final synthetic this$0:Landroid/taobao/apirequest/ApiConnector;


# direct methods
.method public constructor <init>(Landroid/taobao/apirequest/ApiConnector;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "message"
    .parameter "timeout"

    .prologue
    .line 1929
    iput-object p1, p0, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;->this$0:Landroid/taobao/apirequest/ApiConnector;

    .line 1930
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1931
    iput p3, p0, Landroid/taobao/apirequest/ApiConnector$ApiNetWorkErrorException;->mTimeout:I

    .line 1932
    return-void
.end method
