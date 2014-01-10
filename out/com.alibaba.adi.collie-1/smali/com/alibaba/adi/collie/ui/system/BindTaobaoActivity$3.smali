.class Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$3;
.super Ljava/lang/Object;
.source "BindTaobaoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->refreshCheckCode()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$7(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    .line 265
    return-void
.end method
