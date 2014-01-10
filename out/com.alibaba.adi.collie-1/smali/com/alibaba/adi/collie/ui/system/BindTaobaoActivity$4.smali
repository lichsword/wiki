.class Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$4;
.super Ljava/lang/Object;
.source "BindTaobaoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    const/4 v1, 0x1

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->setLoginMode(I)V
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$11(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;I)V

    .line 95
    return-void
.end method
