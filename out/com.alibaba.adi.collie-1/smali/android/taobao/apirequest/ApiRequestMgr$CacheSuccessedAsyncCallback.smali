.class Landroid/taobao/apirequest/ApiRequestMgr$CacheSuccessedAsyncCallback;
.super Ljava/lang/Object;
.source "ApiRequestMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiRequestMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CacheSuccessedAsyncCallback"
.end annotation


# instance fields
.field private data:Landroid/taobao/apirequest/ApiRequestMgr$CallbackObject;

.field final synthetic this$0:Landroid/taobao/apirequest/ApiRequestMgr;


# direct methods
.method public constructor <init>(Landroid/taobao/apirequest/ApiRequestMgr;Landroid/taobao/apirequest/ApiRequestMgr$CallbackObject;)V
    .locals 0
    .parameter
    .parameter "data"

    .prologue
    .line 492
    iput-object p1, p0, Landroid/taobao/apirequest/ApiRequestMgr$CacheSuccessedAsyncCallback;->this$0:Landroid/taobao/apirequest/ApiRequestMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p2, p0, Landroid/taobao/apirequest/ApiRequestMgr$CacheSuccessedAsyncCallback;->data:Landroid/taobao/apirequest/ApiRequestMgr$CallbackObject;

    .line 494
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 498
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 499
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequestMgr$CacheSuccessedAsyncCallback;->data:Landroid/taobao/apirequest/ApiRequestMgr$CallbackObject;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 500
    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequestMgr$CacheSuccessedAsyncCallback;->this$0:Landroid/taobao/apirequest/ApiRequestMgr;

    iget-object v1, v1, Landroid/taobao/apirequest/ApiRequestMgr;->handler:Landroid/taobao/util/SafeHandler;

    invoke-virtual {v1, v0}, Landroid/taobao/util/SafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 501
    return-void
.end method
