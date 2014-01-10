.class Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->handlePushMsgWork()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$11(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V

    .line 267
    return-void
.end method
