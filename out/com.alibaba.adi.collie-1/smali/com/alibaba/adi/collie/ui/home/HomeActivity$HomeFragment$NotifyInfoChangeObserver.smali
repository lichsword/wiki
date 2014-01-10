.class Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotifyInfoChangeObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallNotifyChange(I)V
    .locals 3
    .parameter "num"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 816
    if-lez p1, :cond_0

    .line 818
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCallLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$5(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCallNotifyNumTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$6(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCallNotifyNumTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$6(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 821
    const-string v0, "ShowMissCallNotice"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 826
    :goto_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->refreshCenterAreaState()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$4(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V

    .line 829
    return-void

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCallNotifyNumTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$6(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 824
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCallLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$5(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onNewsNotifyChange(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 860
    return-void
.end method

.method public onSmsNotifyChange(I)V
    .locals 3
    .parameter "num"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 833
    if-lez p1, :cond_0

    .line 835
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mSmsLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$7(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mSmsNotifyNumTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$8(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mSmsNotifyNumTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$8(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 838
    const-string v0, "ShowUnreadSmsNotice"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 843
    :goto_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->refreshCenterAreaState()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$4(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V

    .line 846
    return-void

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mSmsNotifyNumTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$8(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mSmsLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$7(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSystemNotifyChange(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 812
    return-void
.end method

.method public onTaobaoNotifyChange(I)V
    .locals 4
    .parameter "num"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 791
    const-string v0, "adi_lock_enable_taobao"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTaobaoNotifyNumTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$2(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 795
    if-lez p1, :cond_2

    .line 796
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTaobaoLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$3(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTaobaoNotifyNumTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$2(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTaobaoNotifyNumTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$2(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 799
    const-string v0, "ShowLogisticsNotice"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 805
    :goto_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->refreshCenterAreaState()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$4(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V

    goto :goto_0

    .line 801
    :cond_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTaobaoNotifyNumTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$2(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 802
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTaobaoLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$3(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onVideoNotifyChange(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 864
    return-void
.end method

.method public onWeatherNotifyChange()V
    .locals 3

    .prologue
    .line 868
    new-instance v0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;-><init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 869
    return-void
.end method

.method public onWeiboNotifyChange(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 856
    return-void
.end method
