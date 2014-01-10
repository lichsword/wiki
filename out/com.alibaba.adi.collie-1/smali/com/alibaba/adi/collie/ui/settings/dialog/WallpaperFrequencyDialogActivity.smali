.class public Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;
.super Landroid/app/Activity;
.source "WallpaperFrequencyDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mChoicesEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mFreqEveryDayTv:Landroid/widget/TextView;

.field private mFreqHalfDayTv:Landroid/widget/TextView;

.field private mFreqNeverTv:Landroid/widget/TextView;

.field private mFreqScreenOnTv:Landroid/widget/TextView;

.field private mFreqWeeklyTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mChoicesEntries:Ljava/util/Map;

    .line 19
    return-void
.end method

.method private UTClicked(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 83
    packed-switch p1, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 85
    :pswitch_0
    const-string v0, "WallpaperFrequency_Never"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :pswitch_1
    const-string v0, "WallpaperFrequency_HalfDay"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :pswitch_2
    const-string v0, "WallpaperFrequency_EveryDay"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :pswitch_3
    const-string v0, "WallpaperFrequency_EveryWeek"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_4
    const-string v0, "WallpaperFrequency_EveryClick"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x7f0800db
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private initContentView()V
    .locals 3

    .prologue
    .line 38
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mFreqNeverTv:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0800dc

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mFreqHalfDayTv:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0800dd

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mFreqEveryDayTv:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0800de

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mFreqWeeklyTv:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0800db

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mFreqScreenOnTv:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mChoicesEntries:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mFreqNeverTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mFreqNeverTv:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mChoicesEntries:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mFreqHalfDayTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mFreqHalfDayTv:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mChoicesEntries:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mFreqEveryDayTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mFreqEveryDayTv:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mChoicesEntries:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mFreqWeeklyTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mFreqWeeklyTv:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mChoicesEntries:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mFreqScreenOnTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mFreqScreenOnTv:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->setValuesFromPrefs()V

    .line 50
    return-void
.end method

.method private setValuesFromPrefs()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 53
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling;->getUpdateIntervalMillis()J

    move-result-wide v0

    .line 55
    .local v0, intervalMillis:J
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mChoicesEntries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 63
    return-void

    .line 55
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 56
    .local v2, millis:J
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->mChoicesEntries:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 57
    .local v4, tv:Landroid/widget/TextView;
    cmp-long v5, v2, v0

    if-nez v5, :cond_1

    .line 58
    const v5, 0x7f0201ab

    invoke-virtual {v4, v8, v8, v5, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 60
    :cond_1
    const v5, 0x7f0201aa

    invoke-virtual {v4, v8, v8, v5, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 79
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->UTClicked(I)V

    .line 80
    return-void

    .line 73
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 74
    .local v0, newMillis:J
    invoke-static {p0, v0, v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling;->registerAlarmManager(Landroid/content/Context;J)V

    .line 75
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->setValuesFromPrefs()V

    .line 77
    .end local v0           #newMillis:J
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->finish()V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x7f0800db
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f030033

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->setContentView(I)V

    .line 32
    const v1, 0x7f0800e0

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    .local v0, positiveView:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/dialog/WallpaperFrequencyDialogActivity;->initContentView()V

    .line 35
    return-void
.end method
