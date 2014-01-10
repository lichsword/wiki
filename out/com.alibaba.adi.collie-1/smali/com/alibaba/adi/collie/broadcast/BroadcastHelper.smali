.class public Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;
.super Ljava/lang/Object;
.source "BroadcastHelper.java"


# static fields
.field public static final ACTION_JOKE_NUM_CHANGE:Ljava/lang/String; = "com.ali.collie.JOKE_NUM_CHANGE"

.field public static final ACTION_LIST_VIEW_SCROLL_DIRECTION_CHANGED:Ljava/lang/String; = "com.adi.collie.ACTION_LIST_VIEW_SCROLL_DIRECTION_CHANGED"

.field public static final ACTION_NEWS_NUM_CHANGE:Ljava/lang/String; = "com.adi.collie.NEWS_NUM_CHANGE"

.field public static final ACTION_PHONE_CALL_NUM_CHANGE:Ljava/lang/String; = "com.adi.collie.ACTION_PHONE_CALL_NUM_CHANGE"

.field public static final ACTION_PPT_CHANGE:Ljava/lang/String; = "com.adi.collie.ACTION_PPT_CHANG"

.field public static final ACTION_SMS_NUM_CHANGE:Ljava/lang/String; = "com.adi.collie.ACTION_SMS_NUM_CHANGE"

.field public static final ACTION_SYSTEM_ICON_CLICKED:Ljava/lang/String; = "com.adi.collie.ACTION_SYSTEM_ICON_CLICKED"

.field public static final ACTION_TAOBAO_NUM_CHANGE:Ljava/lang/String; = "com.adi.collie.TAOBAO_NUM_CHANGE"

.field public static final ACTION_TAOBAO_TRACKING_REFRESH:Ljava/lang/String; = "com.adi.collie.TAOBAO_TRACKING_REFRESH"

.field public static final ACTION_VIDEO_NUM_CHANGE:Ljava/lang/String; = "com.adi.collie.VIDEO_NUM_CHANGE"

.field public static final ACTION_WEATHER_CHANGE:Ljava/lang/String; = "com.ali.collie.WEATHER_CHANGE"

.field public static final ACTION_WEIBO_NUM_CHANGE:Ljava/lang/String; = "com.adi.collie.ACTION_WEIBO_NUM_CHANGE"

.field public static final ACTION_YUEBAO_CHANGE:Ljava/lang/String; = "com.adi.collie.YUEBAO_CHANGE"

.field public static final ADI_RELOAD_PAGER:Ljava/lang/String; = "com.alibaba.adi.collie.INIT_PAGER"

.field public static final ADI_SCREEN_OFF:Ljava/lang/String; = "com.alibaba.adi.collie.SCREEN_OFF"

.field public static final ADI_SCREEN_ON:Ljava/lang/String; = "com.alibaba.adi.collie.SCREEN_ON"

.field public static final EXTRA_BOOLEAN:Ljava/lang/String; = "extraBoolean"

.field public static final EXTRA_FLOAT:Ljava/lang/String; = "extraFloat"

.field public static final EXTRA_INT:Ljava/lang/String; = "extraInteger"

.field public static final EXTRA_STRING:Ljava/lang/String; = "extraString"

.field public static final KEY_BOUND_LIST_VIEW_TAG:Ljava/lang/String; = "keyTag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send(Ljava/lang/String;F)V
    .locals 2
    .parameter "action"
    .parameter "value"

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extraFloat"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 67
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public static send(Ljava/lang/String;I)V
    .locals 2
    .parameter "action"
    .parameter "value"

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extraInteger"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public static send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "action"
    .parameter "value"

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extraString"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method public static send(Ljava/lang/String;Z)V
    .locals 2
    .parameter "action"
    .parameter "value"

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extraBoolean"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    return-void
.end method
