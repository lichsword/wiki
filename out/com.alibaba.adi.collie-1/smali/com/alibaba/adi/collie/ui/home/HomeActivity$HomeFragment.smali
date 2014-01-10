.class public Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;
.super Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;,
        Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;,
        Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;,
        Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$TimeChangeReceiver;
    }
.end annotation


# static fields
.field public static final DOUBLE_CLICK_TIME:I = 0x190

.field public static final MSG_DOUBLE_CLICK_RESET:I


# instance fields
.field private canShowCenterBattery:Z

.field private final mBatteryChangeReceiver:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;

.field private mCallLayout:Landroid/widget/LinearLayout;

.field private mCallNotifyNumTextView:Landroid/widget/TextView;

.field private mChargingTextView:Landroid/widget/TextView;

.field private mCity:Landroid/widget/TextView;

.field private mDate:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHour:Landroid/widget/TextView;

.field private mLHTemperature:Landroid/widget/TextView;

.field private mMusicLayout:Landroid/widget/RelativeLayout;

.field private mNext:Landroid/widget/ImageView;

.field private final mNotifyInfoChangeObserver:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;

.field private mPlayOrPause:Landroid/widget/ImageView;

.field private mPre:Landroid/widget/ImageView;

.field private mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

.field private mPushCenterViewHasShown:Z

.field private mPushTopView:Lcom/alibaba/adi/collie/ui/view/PushTopView;

.field private mPushTopViewHasShown:Z

.field private mPushWorkInited:Z

.field private mSmsLayout:Landroid/widget/LinearLayout;

.field private mSmsNotifyNumTextView:Landroid/widget/TextView;

.field private mTaobaoLayout:Landroid/widget/LinearLayout;

.field private mTaobaoNotifyNumTextView:Landroid/widget/TextView;

.field private mTemperature:Landroid/widget/TextView;

.field private mTemperatureLine:Landroid/widget/ImageView;

.field private final mTimeChangeReceiver:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$TimeChangeReceiver;

.field private mUpgradeLayout:Landroid/widget/LinearLayout;

.field private mValidPushMsg:Lcom/alibaba/adi/collie/model/push/ValidPushMsg;

.field private mWeatherDetails:Landroid/widget/TextView;

.field private mWeatherInterfaceLayout:Landroid/widget/RelativeLayout;

.field private mWeatherLayout:Lcom/alibaba/adi/collie/ui/view/FlowLayout;

.field private mWeek:Landroid/widget/TextView;

.field private manager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;-><init>()V

    .line 137
    new-instance v0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$TimeChangeReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$TimeChangeReceiver;-><init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTimeChangeReceiver:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$TimeChangeReceiver;

    .line 138
    new-instance v0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;-><init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mBatteryChangeReceiver:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->canShowCenterBattery:Z

    .line 272
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mHandler:Landroid/os/Handler;

    .line 705
    new-instance v0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;-><init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mNotifyInfoChangeObserver:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;

    .line 86
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;Lcom/alibaba/adi/collie/model/service/WeatherData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->setWeatherData(Lcom/alibaba/adi/collie/model/service/WeatherData;)V

    return-void
.end method

.method static synthetic access$10(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mChargingTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->handlePushMsgWork()V

    return-void
.end method

.method static synthetic access$12(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;Lcom/alibaba/adi/collie/model/push/ValidPushMsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mValidPushMsg:Lcom/alibaba/adi/collie/model/push/ValidPushMsg;

    return-void
.end method

.method static synthetic access$13(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->setTopPushView()V

    return-void
.end method

.method static synthetic access$14(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->setCenterPushView()V

    return-void
.end method

.method static synthetic access$15(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Lcom/alibaba/adi/collie/ui/view/PushCenterView;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Lcom/alibaba/adi/collie/ui/view/PushTopView;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopView:Lcom/alibaba/adi/collie/ui/view/PushTopView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTaobaoNotifyNumTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTaobaoLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->refreshCenterAreaState()V

    return-void
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCallLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCallNotifyNumTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mSmsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mSmsNotifyNumTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->canShowCenterBattery:Z

    return v0
.end method

.method private handlePushMsgWork()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterViewHasShown:Z

    .line 277
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopViewHasShown:Z

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushWorkInited:Z

    .line 279
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "Push manager getValidPushMsgAsync...invoke"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/alibaba/adi/collie/business/push/PushManager;->getInstance()Lcom/alibaba/adi/collie/business/push/PushManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$2;-><init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/push/PushManager;->getValidPushMsgAsync(Lcom/alibaba/adi/collie/business/push/IGetMsgCallback;)V

    .line 321
    return-void
.end method

.method private initContentView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 638
    if-eqz p1, :cond_0

    .line 639
    const v1, 0x7f080028

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mWeatherInterfaceLayout:Landroid/widget/RelativeLayout;

    .line 640
    const v1, 0x7f080041

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mMusicLayout:Landroid/widget/RelativeLayout;

    .line 641
    const v1, 0x7f08002e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/view/FlowLayout;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mWeatherLayout:Lcom/alibaba/adi/collie/ui/view/FlowLayout;

    .line 642
    const v1, 0x7f08002a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mHour:Landroid/widget/TextView;

    .line 644
    const v1, 0x7f08002c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mDate:Landroid/widget/TextView;

    .line 645
    const v1, 0x7f08002d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mWeek:Landroid/widget/TextView;

    .line 646
    const v1, 0x7f08002f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCity:Landroid/widget/TextView;

    .line 649
    const v1, 0x7f080043

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPlayOrPause:Landroid/widget/ImageView;

    .line 650
    const v1, 0x7f080042

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPre:Landroid/widget/ImageView;

    .line 651
    const v1, 0x7f080044

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mNext:Landroid/widget/ImageView;

    .line 652
    const v1, 0x7f080036

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTaobaoLayout:Landroid/widget/LinearLayout;

    .line 653
    const v1, 0x7f080039

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCallLayout:Landroid/widget/LinearLayout;

    .line 654
    const v1, 0x7f08003c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mSmsLayout:Landroid/widget/LinearLayout;

    .line 655
    const v1, 0x7f08003f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mUpgradeLayout:Landroid/widget/LinearLayout;

    .line 660
    const v1, 0x7f080029

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/view/PushTopView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopView:Lcom/alibaba/adi/collie/ui/view/PushTopView;

    .line 661
    const v1, 0x7f080034

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    .line 663
    const v1, 0x7f080038

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTaobaoNotifyNumTextView:Landroid/widget/TextView;

    .line 664
    const v1, 0x7f08003b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCallNotifyNumTextView:Landroid/widget/TextView;

    .line 665
    const v1, 0x7f08003e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mSmsNotifyNumTextView:Landroid/widget/TextView;

    .line 670
    const v1, 0x7f080031

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTemperature:Landroid/widget/TextView;

    .line 671
    const v1, 0x7f080033

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mLHTemperature:Landroid/widget/TextView;

    .line 672
    const v1, 0x7f080032

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTemperatureLine:Landroid/widget/ImageView;

    .line 675
    const v1, 0x7f080030

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mWeatherDetails:Landroid/widget/TextView;

    .line 677
    const v1, 0x7f080045

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mChargingTextView:Landroid/widget/TextView;

    .line 679
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/CoreApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 680
    const-string v2, "font/test_font.ttf"

    .line 679
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 681
    .local v0, typeFace:Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mHour:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 683
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTaobaoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mSmsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mUpgradeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopView:Lcom/alibaba/adi/collie/ui/view/PushTopView;

    invoke-virtual {v1, p0}, Lcom/alibaba/adi/collie/ui/view/PushTopView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    invoke-virtual {v1, p0}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPlayOrPause:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPre:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mNext:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mBatteryChangeReceiver:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->register()V

    .line 701
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/CoreApplication;->getNotificationInfo()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mNotifyInfoChangeObserver:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$NotifyInfoChangeObserver;

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->addListener(Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;)V

    .line 703
    .end local v0           #typeFace:Landroid/graphics/Typeface;
    :cond_0
    return-void
.end method

.method private isCurrentHomePage()Z
    .locals 2

    .prologue
    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->isCurrentHomePage()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 582
    :goto_0
    return v1

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 582
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newInstance()Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;
    .locals 4

    .prologue
    .line 165
    const-string v2, "xhh"

    const-string v3, "home new instance"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "fragment"

    const-string v3, "CountingFragment newInstance"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;-><init>()V

    .line 168
    .local v1, f:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    .local v0, args:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 171
    return-object v1
.end method

.method private onTimeChanged()V
    .locals 4

    .prologue
    .line 630
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mHour:Landroid/widget/TextView;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mDate:Landroid/widget/TextView;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "M\u6708d\u65e5"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mWeek:Landroid/widget/TextView;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEE"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    return-void
.end method

.method private refreshCenterAreaState()V
    .locals 2

    .prologue
    .line 713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->canShowCenterBattery:Z

    .line 714
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->isAnyCompomentsShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->setVisibility(I)V

    .line 717
    :cond_0
    return-void
.end method

.method private sendKeyCode(I)V
    .locals 13
    .parameter "keyCode"

    .prologue
    .line 605
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 607
    .local v1, time:J
    new-instance v11, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v11, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 608
    .local v11, downIntent:Landroid/content/Intent;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 609
    .local v0, downEvent:Landroid/view/KeyEvent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v11, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 610
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v5}, Lcom/alibaba/adi/collie/CoreApplication;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 612
    new-instance v12, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v12, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 613
    .local v12, upIntent:Landroid/content/Intent;
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-wide v4, v1

    move-wide v6, v1

    move v9, p1

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 614
    .local v3, upEvent:Landroid/view/KeyEvent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v12, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 615
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const/4 v5, 0x0

    invoke-virtual {v4, v12, v5}, Lcom/alibaba/adi/collie/CoreApplication;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method private setCenterPushView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 363
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mValidPushMsg:Lcom/alibaba/adi/collie/model/push/ValidPushMsg;

    if-nez v1, :cond_1

    .line 364
    :cond_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    const-string v2, "valid msg is null or center view is null"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->isAnyCompomentsShow()Z

    move-result v1

    if-nez v1, :cond_4

    .line 368
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mValidPushMsg:Lcom/alibaba/adi/collie/model/push/ValidPushMsg;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;->getCenterMsg()Lcom/alibaba/adi/collie/model/push/PushMsg;

    move-result-object v0

    .line 369
    .local v0, centerMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;
    if-eqz v0, :cond_3

    .line 370
    sget-object v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/push/PushMsg;->debug()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    if-eqz v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v2

    .line 374
    new-instance v3, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$4;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$4;-><init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;Lcom/alibaba/adi/collie/model/push/PushMsg;)V

    .line 373
    invoke-virtual {v1, v2, p0, v0, v3}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->setMsg(Lcom/alibaba/adi/collie/ui/MainActivity;Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;Lcom/alibaba/adi/collie/model/push/PushMsg;Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;)V

    .line 392
    const-string v1, "ShowMiddleNotice"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterViewHasShown:Z

    goto :goto_0

    .line 395
    :cond_2
    sget-object v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    const-string v2, "MainActivityContext object is null"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_3
    sget-object v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    const-string v2, "[Hide]centerMsg is null, so not show center push view."

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->setVisibility(I)V

    goto :goto_0

    .line 402
    .end local v0           #centerMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;
    :cond_4
    sget-object v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    const-string v2, "[Hide]Some compoments Visible, so not show center push view."

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTopPushView()V
    .locals 4

    .prologue
    .line 325
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopView:Lcom/alibaba/adi/collie/ui/view/PushTopView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mValidPushMsg:Lcom/alibaba/adi/collie/model/push/ValidPushMsg;

    if-nez v1, :cond_1

    .line 326
    :cond_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    const-string v2, "valid msg is null or top view is null"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mValidPushMsg:Lcom/alibaba/adi/collie/model/push/ValidPushMsg;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;->getTopMsg()Lcom/alibaba/adi/collie/model/push/PushMsg;

    move-result-object v0

    .line 330
    .local v0, topMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;
    if-eqz v0, :cond_3

    .line 331
    sget-object v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/push/PushMsg;->debug()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopView:Lcom/alibaba/adi/collie/ui/view/PushTopView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/view/PushTopView;->setVisibility(I)V

    .line 333
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    if-eqz v1, :cond_2

    .line 334
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopView:Lcom/alibaba/adi/collie/ui/view/PushTopView;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v2

    .line 335
    new-instance v3, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$3;-><init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;Lcom/alibaba/adi/collie/model/push/PushMsg;)V

    .line 334
    invoke-virtual {v1, v2, p0, v0, v3}, Lcom/alibaba/adi/collie/ui/view/PushTopView;->setMsg(Lcom/alibaba/adi/collie/ui/MainActivity;Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;Lcom/alibaba/adi/collie/model/push/PushMsg;Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;)V

    .line 351
    const-string v1, "ShowTopNotice"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 352
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopViewHasShown:Z

    goto :goto_0

    .line 354
    :cond_2
    sget-object v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    const-string v2, "MainActivityContext object is null"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_3
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopView:Lcom/alibaba/adi/collie/ui/view/PushTopView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/view/PushTopView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setWeatherData(Lcom/alibaba/adi/collie/model/service/WeatherData;)V
    .locals 5
    .parameter "weatherData"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 720
    if-eqz p1, :cond_3

    .line 721
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mWeatherLayout:Lcom/alibaba/adi/collie/ui/view/FlowLayout;

    invoke-virtual {v0, v3}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTemperature:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/WeatherData;->getTmp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/WeatherData;->getLtmp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/WeatherData;->getLtmp()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/WeatherData;->getHtmp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/WeatherData;->getHtmp()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mLHTemperature:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTemperatureLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 733
    :goto_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mWeatherDetails:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/WeatherData;->getWd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/WeatherData;->getDl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/WeatherData;->getWd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCity:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/WeatherData;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    :cond_1
    :goto_1
    return-void

    .line 728
    :cond_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mLHTemperature:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTemperatureLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mLHTemperature:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/WeatherData;->getLtmp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u00b0 ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/WeatherData;->getHtmp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 739
    :cond_3
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mWeatherLayout:Lcom/alibaba/adi/collie/ui/view/FlowLayout;

    invoke-virtual {v0, v4}, Lcom/alibaba/adi/collie/ui/view/FlowLayout;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCity:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public hasShownPushMsg(Z)V
    .locals 6
    .parameter "isLocked"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 420
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mValidPushMsg:Lcom/alibaba/adi/collie/model/push/ValidPushMsg;

    if-eqz v0, :cond_4

    .line 421
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterViewHasShown:Z

    if-eqz v0, :cond_1

    .line 422
    invoke-static {}, Lcom/alibaba/adi/collie/business/push/PushManager;->getInstance()Lcom/alibaba/adi/collie/business/push/PushManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mValidPushMsg:Lcom/alibaba/adi/collie/model/push/ValidPushMsg;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;->getCenterMsg()Lcom/alibaba/adi/collie/model/push/PushMsg;

    move-result-object v1

    .line 423
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->isLayoutClicked()Z

    move-result v2

    .line 424
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->isLayoutClosed()Z

    move-result v3

    .line 422
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/alibaba/adi/collie/business/push/PushManager;->hasShown(Lcom/alibaba/adi/collie/model/push/PushMsg;ZZZ)Z

    move-result v0

    .line 425
    if-eqz v0, :cond_0

    .line 426
    iput-boolean v4, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterViewHasShown:Z

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    invoke-virtual {v0, v5}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->setVisibility(I)V

    .line 430
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopViewHasShown:Z

    if-eqz v0, :cond_3

    .line 431
    invoke-static {}, Lcom/alibaba/adi/collie/business/push/PushManager;->getInstance()Lcom/alibaba/adi/collie/business/push/PushManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mValidPushMsg:Lcom/alibaba/adi/collie/model/push/ValidPushMsg;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;->getTopMsg()Lcom/alibaba/adi/collie/model/push/PushMsg;

    move-result-object v1

    .line 432
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopView:Lcom/alibaba/adi/collie/ui/view/PushTopView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/PushTopView;->isLayoutClicked()Z

    move-result v2

    .line 433
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopView:Lcom/alibaba/adi/collie/ui/view/PushTopView;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/view/PushTopView;->isLayoutClosed()Z

    move-result v3

    .line 431
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/alibaba/adi/collie/business/push/PushManager;->hasShown(Lcom/alibaba/adi/collie/model/push/PushMsg;ZZZ)Z

    move-result v0

    .line 434
    if-eqz v0, :cond_2

    .line 435
    iput-boolean v4, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopViewHasShown:Z

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopView:Lcom/alibaba/adi/collie/ui/view/PushTopView;

    invoke-virtual {v0, v5}, Lcom/alibaba/adi/collie/ui/view/PushTopView;->setVisibility(I)V

    .line 442
    :cond_3
    :goto_0
    invoke-static {}, Lcom/alibaba/adi/collie/share/control/ShareBusiness;->dismiss()V

    .line 443
    return-void

    .line 440
    :cond_4
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "[delete] valid push msg is null"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hideContent()V
    .locals 3

    .prologue
    .line 521
    sget-object v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    const-string v2, "hideContent()"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 523
    .local v0, putAm:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 524
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mWeatherInterfaceLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 525
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mWeatherInterfaceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 531
    return-void
.end method

.method public inClickableCompomentsArea(FFI)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "bufferSize"

    .prologue
    .line 541
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->inClickableCompomentsArea(III)Z

    move-result v0

    return v0
.end method

.method public inClickableCompomentsArea(III)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "bufferSize"

    .prologue
    const/4 v0, 0x0

    .line 594
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->isCurrentHomePage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 598
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCallLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, p1, p2, p3}, Lcom/alibaba/adi/collie/util/Tools;->inViewArea(Landroid/view/View;III)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mSmsLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, p1, p2, p3}, Lcom/alibaba/adi/collie/util/Tools;->inViewArea(Landroid/view/View;III)Z

    move-result v1

    if-nez v1, :cond_2

    .line 599
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTaobaoLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, p1, p2, p3}, Lcom/alibaba/adi/collie/util/Tools;->inViewArea(Landroid/view/View;III)Z

    move-result v1

    if-nez v1, :cond_2

    .line 600
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mUpgradeLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, p1, p2, p3}, Lcom/alibaba/adi/collie/util/Tools;->inViewArea(Landroid/view/View;III)Z

    move-result v1

    if-nez v1, :cond_2

    .line 601
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mMusicLayout:Landroid/widget/RelativeLayout;

    invoke-static {v1, p1, p2, p3}, Lcom/alibaba/adi/collie/util/Tools;->inViewArea(Landroid/view/View;III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public inClickableCompomentsEdge(FFII)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "bufferEdge"
    .parameter "edgeSize"

    .prologue
    .line 545
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->inClickableCompomentsOutSideEdge(IIII)Z

    move-result v0

    return v0
.end method

.method public inClickableCompomentsOutSideEdge(IIII)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "bufferSize"
    .parameter "edgeSize"

    .prologue
    const/4 v0, 0x0

    .line 566
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->isCurrentHomePage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 570
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCallLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/alibaba/adi/collie/util/Tools;->inViewOutSideEdge(Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_2

    .line 571
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mSmsLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/alibaba/adi/collie/util/Tools;->inViewOutSideEdge(Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_2

    .line 572
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTaobaoLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/alibaba/adi/collie/util/Tools;->inViewOutSideEdge(Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_2

    .line 573
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mUpgradeLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/alibaba/adi/collie/util/Tools;->inViewOutSideEdge(Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_2

    .line 574
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mMusicLayout:Landroid/widget/RelativeLayout;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/alibaba/adi/collie/util/Tools;->inViewOutSideEdge(Landroid/view/View;IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public inClickableCompomentsPressed()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mSmsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTaobaoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mUpgradeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mMusicLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAnyCompomentsShow()Z
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mSmsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTaobaoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mUpgradeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mMusicLayout:Landroid/widget/RelativeLayout;

    .line 562
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ismPushCenterViewHasShown()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushWorkInited:Z

    if-nez v0, :cond_0

    .line 155
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterViewHasShown:Z

    .line 156
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopViewHasShown:Z

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterViewHasShown:Z

    return v0
.end method

.method public ismPushTopViewHasShown()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushWorkInited:Z

    if-nez v0, :cond_0

    .line 147
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterViewHasShown:Z

    .line 148
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopViewHasShown:Z

    .line 150
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopViewHasShown:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 447
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v6

    .line 448
    .local v6, pagerActivity:Lcom/alibaba/adi/collie/ui/MainActivity;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 504
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 450
    :pswitch_1
    const-string v0, "LogisticsNotice"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 451
    if-eqz v6, :cond_0

    .line 452
    const-string v0, "taobao"

    invoke-virtual {v6, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->scrollPage(Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :pswitch_2
    if-eqz v6, :cond_0

    .line 457
    const-string v0, "MissCallNotice"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 458
    const-string v0, "system"

    invoke-virtual {v6, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->scrollPage(Ljava/lang/String;)V

    .line 459
    const-string v0, "com.adi.collie.ACTION_SYSTEM_ICON_CLICKED"

    .line 460
    const/4 v1, 0x2

    .line 459
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;->send(Ljava/lang/String;I)V

    goto :goto_0

    .line 464
    :pswitch_3
    if-eqz v6, :cond_0

    .line 465
    const-string v0, "UnreadSmsNotice"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 466
    const-string v0, "system"

    invoke-virtual {v6, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->scrollPage(Ljava/lang/String;)V

    .line 467
    const-string v0, "com.adi.collie.ACTION_SYSTEM_ICON_CLICKED"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;->send(Ljava/lang/String;I)V

    goto :goto_0

    .line 472
    :pswitch_4
    const-string v0, "UpdateNotice"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 473
    invoke-static {v1}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->setNotifiedAlready(Z)V

    .line 474
    new-instance v0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    const-string v3, "VersionInformation"

    .line 475
    const v4, 0x7f040013

    const v5, 0x7f040014

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;-><init>(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;II)V

    .line 474
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    goto :goto_0

    .line 490
    :pswitch_5
    const-string v0, "PlayNext"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 491
    const/16 v0, 0x57

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->sendKeyCode(I)V

    goto :goto_0

    .line 494
    :pswitch_6
    const-string v0, "PlayPre"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 495
    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->sendKeyCode(I)V

    goto :goto_0

    .line 498
    :pswitch_7
    const-string v0, "PlayPause"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 499
    const/16 v0, 0x55

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->sendKeyCode(I)V

    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x7f080036
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 179
    const-string v0, "fragment"

    const-string v1, "CountingFragment onCreate"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/CoreApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->manager:Landroid/media/AudioManager;

    .line 183
    const-string v0, "home"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->pageLockFrom:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 192
    const v1, 0x7f03000a

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, view:Landroid/view/View;
    sget-object v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    const-string v2, "xhh onCreateView"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->initRootView(Landroid/view/View;)V

    .line 195
    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->initContentView(Landroid/view/View;)V

    .line 196
    new-instance v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;-><init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$LoadWeatherAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 197
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->onDestroy()V

    .line 235
    sget-object v0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh on destroy"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopView:Lcom/alibaba/adi/collie/ui/view/PushTopView;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushTopView:Lcom/alibaba/adi/collie/ui/view/PushTopView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/PushTopView;->release()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->release()V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mBatteryChangeReceiver:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$BatteryChangeReceiver;->unregister()V

    .line 227
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/CoreApplication;->getNotificationInfo()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->removeListener()V

    .line 228
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->onDestroyView()V

    .line 229
    sget-object v0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh destroyview"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 409
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "[delete] home activity onPause"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterViewHasShown:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushCenterView:Lcom/alibaba/adi/collie/ui/view/PushCenterView;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->isLayoutClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setFgBitmapBlur(Z)V

    .line 413
    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isLocked()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 414
    .local v0, isLocked:Z
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->hasShownPushMsg(Z)V

    .line 415
    iput-boolean v3, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mPushWorkInited:Z

    .line 416
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->onPause()V

    .line 417
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 240
    sget-object v4, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    const-string v5, "xhh onResume"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->onResume()V

    .line 242
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/CoreApplication;->getNotificationInfo()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v2

    .line 243
    .local v2, info:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;
    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->notifyDatasetChanged()V

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->setMusicLayoutVisibility()V

    .line 247
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mUpgradeLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    .line 248
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v4}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->shouldNotify(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    .line 249
    .local v3, status:I
    :goto_0
    if-nez v3, :cond_1

    .line 250
    const-string v4, "ShowUpdateNotice"

    invoke-static {v4}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 252
    :cond_1
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mUpgradeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    .end local v3           #status:I
    :cond_2
    const-wide/16 v0, 0x3e8

    .line 262
    .local v0, DELAY_PUSH_MSG_WORK:J
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$1;

    invoke-direct {v5, p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$1;-><init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V

    .line 268
    const-wide/16 v6, 0x3e8

    .line 262
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    return-void

    .line 248
    .end local v0           #DELAY_PUSH_MSG_WORK:J
    :cond_3
    const/16 v3, 0x8

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 202
    sget-object v0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh onStart"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTimeChangeReceiver:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$TimeChangeReceiver;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$TimeChangeReceiver;->register()V

    .line 204
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->onStart()V

    .line 205
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 209
    sget-object v0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh onStop"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mTimeChangeReceiver:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$TimeChangeReceiver;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$TimeChangeReceiver;->unregister()V

    .line 211
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->onStop()V

    .line 212
    return-void
.end method

.method public setMusicLayoutVisibility()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mMusicLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 627
    :goto_0
    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->manager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mMusicLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 626
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->refreshCenterAreaState()V

    goto :goto_0

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mMusicLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public showContent()V
    .locals 3

    .prologue
    .line 507
    sget-object v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->TAG:Ljava/lang/String;

    const-string v2, "showContent()"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 509
    .local v0, popAm:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 510
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mWeatherInterfaceLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 511
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->mWeatherInterfaceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 518
    return-void
.end method
