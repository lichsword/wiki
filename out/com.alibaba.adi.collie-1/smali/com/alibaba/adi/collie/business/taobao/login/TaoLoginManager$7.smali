.class Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$7;
.super Ljava/lang/Object;
.source "TaoLoginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->autoLoginAsync()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$7;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$7;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->autoLoginSync()Z

    .line 332
    return-void
.end method
