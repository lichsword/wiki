.class public Lcom/taobao/statistic/TBSSE$Adv;
.super Ljava/lang/Object;
.source "TBSSE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBSSE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/statistic/TBSSE;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/TBSSE;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/taobao/statistic/TBSSE$Adv;->this$0:Lcom/taobao/statistic/TBSSE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forceUpload()V
    .locals 2

    .prologue
    .line 567
    iget-object v1, p0, Lcom/taobao/statistic/TBSSE$Adv;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 568
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->forceUpload()V

    .line 571
    :cond_0
    return-void
.end method

.method public turnOffLogFriendly()V
    .locals 2

    .prologue
    .line 577
    iget-object v1, p0, Lcom/taobao/statistic/TBSSE$Adv;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 578
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->turnOffLogFriendly()V

    .line 581
    :cond_0
    return-void
.end method
