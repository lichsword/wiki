.class Landroid/taobao/apirequest/ApiConnector$NetworkFail;
.super Ljava/lang/Exception;
.source "ApiConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkFail"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/apirequest/ApiConnector;


# direct methods
.method public constructor <init>(Landroid/taobao/apirequest/ApiConnector;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "message"

    .prologue
    .line 1962
    iput-object p1, p0, Landroid/taobao/apirequest/ApiConnector$NetworkFail;->this$0:Landroid/taobao/apirequest/ApiConnector;

    .line 1963
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1964
    return-void
.end method
