.class Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/MainActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/MainActivity;Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1127
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1131
    const-string v0, "com.alibaba.adi.collie.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1132
    sget-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "ruibo: receive adi screen off broadcast"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    const-string v0, "ScreenOff"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 1134
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "[delete] screen off received"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$8(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getHomeFragmentReference()Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->hasShownPushMsg(Z)V

    .line 1136
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$9(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->setLockState(Ljava/lang/Boolean;)V

    .line 1137
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$9(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v0

    sget-object v1, Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;->OFF:Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->setScreenState(Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;)V

    .line 1138
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #calls: Lcom/alibaba/adi/collie/ui/MainActivity;->changeWallpaper()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$10(Lcom/alibaba/adi/collie/ui/MainActivity;)V

    .line 1139
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    const-string v1, "home"

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->scrollPage(Ljava/lang/String;)V

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1140
    :cond_1
    const-string v0, "com.alibaba.adi.collie.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1141
    sget-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "ruibo: receive adi screen on broadcast"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$9(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v0

    sget-object v1, Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;->ON:Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->setScreenState(Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;)V

    .line 1143
    const-string v0, "launch"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 1144
    const v0, 0x13880

    const-string v1, "wallpaper"

    .line 1145
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getInstance()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->currentWallpaperID:Ljava/lang/String;

    .line 1144
    invoke-static {v0, v1, v2}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTAdiCommitEvent(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1146
    :cond_2
    const-string v0, "com.alibaba.adi.collie.INIT_PAGER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$8(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->loadData()V

    .line 1148
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$8(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->notifyDataSetChanged()V

    .line 1149
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mPageIndication:Lcom/alibaba/adi/collie/ui/view/PageIndication;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$11(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/ui/view/PageIndication;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$8(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$8(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    move-result-object v2

    const-string v3, "home"

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/view/PageIndication;->initData(II)V

    .line 1150
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mPageIndication:Lcom/alibaba/adi/collie/ui/view/PageIndication;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$11(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/ui/view/PageIndication;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mAdapter:Lcom/alibaba/adi/collie/ui/MainPagerAdapter;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$8(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getHomePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/PageIndication;->change(I)V

    .line 1151
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$KeyguardBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    const-string v1, "home"

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->scrollPage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
