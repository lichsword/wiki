.class public Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 876
    return-void
.end method

.method private onBatteryStateChange(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 904
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 941
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 907
    :cond_1
    const-string v4, "level"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 908
    .local v1, rawlevel:I
    const-string v4, "scale"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 909
    .local v2, scale:I
    const-string v4, "status"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 911
    .local v3, status:I
    const/4 v0, -0x1

    .line 912
    .local v0, level:I
    if-ltz v1, :cond_2

    if-lez v2, :cond_2

    .line 913
    mul-int/lit8 v4, v1, 0x64

    div-int v0, v4, v2

    .line 916
    :cond_2
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 921
    :pswitch_1
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mChargingTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$10(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    const v6, 0x7f0a0188

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mChargingTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$10(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->show()V

    goto :goto_0

    .line 928
    :pswitch_2
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mChargingTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$10(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 929
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->hide()V

    goto :goto_0

    .line 933
    :pswitch_3
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mChargingTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$10(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    const v6, 0x7f0a0189

    invoke-virtual {v5, v6}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mChargingTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$10(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 935
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->show()V

    goto :goto_0

    .line 916
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mChargingTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$10(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 900
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 880
    invoke-direct {p0, p2}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->onBatteryStateChange(Landroid/content/Intent;)V

    .line 881
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 884
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 885
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/adi/collie/CoreApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 886
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->canShowCenterBattery:Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$9(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mChargingTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$10(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 896
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 889
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/CoreApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 890
    return-void
.end method
