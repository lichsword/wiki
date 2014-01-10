.class public Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
.super Ljava/lang/Object;
.source "PushMsg.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/model/push/PushMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Msg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1c0b0533b9eb03f4L


# instance fields
.field private controlFlags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

.field private flgs:Ljava/lang/String;

.field private gid:Ljava/lang/String;

.field private gtp:Ljava/lang/String;

.field private ico:Ljava/lang/String;

.field private simg:Ljava/lang/String;

.field private stxt:Ljava/lang/String;

.field private surl:Ljava/lang/String;

.field private txt:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->txt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->ico:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->simg:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public debug()Ljava/lang/String;
    .locals 3

    .prologue
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n#gid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->gid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n#gtp="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->gtp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n#ico="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->ico:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n#url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n#txt="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->txt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n#flags="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->flgs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n#stxt="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->stxt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n#surl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->surl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n#simg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->simg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->controlFlags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->controlFlags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->debug()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getControlFlags()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->controlFlags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    return-object v0
.end method

.method public getFlgs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->flgs:Ljava/lang/String;

    return-object v0
.end method

.method public getGid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->gid:Ljava/lang/String;

    return-object v0
.end method

.method public getGtp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->gtp:Ljava/lang/String;

    return-object v0
.end method

.method public getIco()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->ico:Ljava/lang/String;

    return-object v0
.end method

.method public getSimg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->simg:Ljava/lang/String;

    return-object v0
.end method

.method public getStxt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->stxt:Ljava/lang/String;

    return-object v0
.end method

.method public getSurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->surl:Ljava/lang/String;

    return-object v0
.end method

.method public getTxt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->txt:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 388
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->gid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "gid is null or empty"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :goto_0
    return v0

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->txt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->ico:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "[Reason]txt And ico [both] null Or empty"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->controlFlags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->controlFlags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->valid()Z

    move-result v1

    if-nez v1, :cond_3

    .line 399
    :cond_2
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "[Reason]controlFlags is null Or not valid."

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_3
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->controlFlags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->enableShare()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 405
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->stxt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->surl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->simg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 406
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "[Reason]control flags [Enable share], but share text/url/image all empty"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFlgs(Ljava/lang/String;)V
    .locals 1
    .parameter "flgs"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->flgs:Ljava/lang/String;

    .line 347
    new-instance v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    invoke-direct {v0, p1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->controlFlags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    .line 348
    return-void
.end method

.method public setGid(Ljava/lang/String;)V
    .locals 0
    .parameter "gid"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->gid:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setGtp(Ljava/lang/String;)V
    .locals 0
    .parameter "gtp"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->gtp:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setIco(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->ico:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setSimg(Ljava/lang/String;)V
    .locals 0
    .parameter "simg"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->simg:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setStxt(Ljava/lang/String;)V
    .locals 0
    .parameter "stxt"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->stxt:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setSurl(Ljava/lang/String;)V
    .locals 0
    .parameter "surl"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->surl:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setTxt(Ljava/lang/String;)V
    .locals 0
    .parameter "txt"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->txt:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 324
    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 330
    :cond_0
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->url:Ljava/lang/String;

    .line 331
    return-void
.end method
