.class public Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;
.super Ljava/lang/Object;
.source "CoreApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/CoreApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

.field private newNotifyNum:I

.field private phoneCallNotifyNum:I

.field private smsNotifyNum:I

.field private taobaoNotifyNum:I

.field private videoNum:I

.field private weiboNotifyNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->taobaoNotifyNum:I

    .line 107
    iput v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->phoneCallNotifyNum:I

    .line 108
    iput v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->smsNotifyNum:I

    .line 109
    iput v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->weiboNotifyNum:I

    .line 110
    iput v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->newNotifyNum:I

    .line 111
    iput v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->videoNum:I

    .line 104
    return-void
.end method


# virtual methods
.method public addListener(Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    .line 177
    return-void
.end method

.method public getNewNotifyNum()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->newNotifyNum:I

    return v0
.end method

.method public getPhoneCallNotifyNum()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->phoneCallNotifyNum:I

    return v0
.end method

.method public getSmsNotifyNum()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->smsNotifyNum:I

    return v0
.end method

.method public getTaobaoNotifyNum()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->taobaoNotifyNum:I

    return v0
.end method

.method public getVideoNum()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->videoNum:I

    return v0
.end method

.method public getWeiboNotifyNum()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->weiboNotifyNum:I

    return v0
.end method

.method public hasNotify()Z
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->phoneCallNotifyNum:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->smsNotifyNum:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->taobaoNotifyNum:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->weiboNotifyNum:I

    if-gtz v0, :cond_0

    .line 130
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->newNotifyNum:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->videoNum:I

    .line 129
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyDatasetChanged()V
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->taobaoNotifyNum:I

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->setTaobaoNotifyNum(I)V

    .line 115
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->phoneCallNotifyNum:I

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->setPhoneCallNotifyNum(I)V

    .line 116
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->smsNotifyNum:I

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->setSmsNotifyNum(I)V

    .line 117
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->weiboNotifyNum:I

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->setWeiboNotifyNum(I)V

    .line 118
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->newNotifyNum:I

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->setNewNotifyNum(I)V

    .line 119
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->videoNum:I

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->setVideoNum(I)V

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->setWeather()V

    .line 121
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    .line 181
    return-void
.end method

.method public setNewNotifyNum(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 150
    iput p1, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->newNotifyNum:I

    .line 151
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    invoke-interface {v0, p1}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;->onNewsNotifyChange(I)V

    .line 154
    :cond_0
    return-void
.end method

.method public setPhoneCallNotifyNum(I)V
    .locals 1
    .parameter "phoneCallNotifyNum"

    .prologue
    .line 188
    iput p1, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->phoneCallNotifyNum:I

    .line 189
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    invoke-interface {v0, p1}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;->onCallNotifyChange(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public setSmsNotifyNum(I)V
    .locals 1
    .parameter "smsNotifyNum"

    .prologue
    .line 199
    iput p1, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->smsNotifyNum:I

    .line 200
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    invoke-interface {v0, p1}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;->onSmsNotifyChange(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public setTaobaoNotifyNum(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 138
    iput p1, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->taobaoNotifyNum:I

    .line 139
    const-string v0, "taobao_logistics"

    iget v1, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->taobaoNotifyNum:I

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;I)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    invoke-interface {v0, p1}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;->onTaobaoNotifyChange(I)V

    .line 143
    :cond_0
    return-void
.end method

.method public setVideoNum(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 161
    iput p1, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->videoNum:I

    .line 162
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    invoke-interface {v0, p1}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;->onVideoNotifyChange(I)V

    .line 165
    :cond_0
    return-void
.end method

.method public setWeather()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;->onWeatherNotifyChange()V

    .line 171
    :cond_0
    return-void
.end method

.method public setWeiboNotifyNum(I)V
    .locals 1
    .parameter "weiboNotifyNum"

    .prologue
    .line 210
    iput p1, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->weiboNotifyNum:I

    .line 211
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->listener:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;

    invoke-interface {v0, p1}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo$OnNumChangeListener;->onWeiboNotifyChange(I)V

    .line 214
    :cond_0
    return-void
.end method
