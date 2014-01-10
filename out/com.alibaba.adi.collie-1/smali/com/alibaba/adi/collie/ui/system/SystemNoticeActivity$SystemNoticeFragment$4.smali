.class Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$4;
.super Ljava/lang/Object;
.source "SystemNoticeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->animClear_animDelItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$4;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 189
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$4;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    iget v1, v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mItemAnimCount:I

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$4;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$8(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->tArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 190
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$4;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$4;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    iget v2, v2, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mItemAnimCount:I

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->animClear_getanimDelItem(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 191
    .local v0, animClear_animDelItem:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$4;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$8(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->tArray:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$4;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    iget v2, v2, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mItemAnimCount:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$4;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    iget v2, v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mItemAnimCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mItemAnimCount:I

    .line 193
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$4;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->animClear_animDelItems()V

    .line 195
    .end local v0           #animClear_animDelItem:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method
