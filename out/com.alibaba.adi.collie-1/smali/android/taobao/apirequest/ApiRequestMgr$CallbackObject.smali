.class Landroid/taobao/apirequest/ApiRequestMgr$CallbackObject;
.super Ljava/lang/Object;
.source "ApiRequestMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiRequestMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallbackObject"
.end annotation


# instance fields
.field public callback:Landroid/taobao/apirequest/AsyncDataListener;

.field public result:Landroid/taobao/apirequest/ApiResult;

.field final synthetic this$0:Landroid/taobao/apirequest/ApiRequestMgr;


# direct methods
.method constructor <init>(Landroid/taobao/apirequest/ApiRequestMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Landroid/taobao/apirequest/ApiRequestMgr$CallbackObject;->this$0:Landroid/taobao/apirequest/ApiRequestMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
