.class public Lcom/alibaba/adi/collie/model/push/PushMsg;
.super Ljava/lang/Object;
.source "PushMsg.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    }
.end annotation


# static fields
.field public static final DIR_PUSH:Ljava/lang/String; = "push"

.field public static final STATUS_TB_TRANKING_NO_NEW:J = 0x80L

.field public static final TAG:Ljava/lang/String; = null

.field public static final TYPE_SYS:Ljava/lang/String; = "sys"

.field public static final TYPE_WL:Ljava/lang/String; = "wl"

.field private static final serialVersionUID:J = 0x710aac46ea26c7fcL


# instance fields
.field private dr:J

.field private et:J

.field private id:Ljava/lang/String;

.field private msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

.field private st:J

.field private tp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNewImageUrlList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v0

    .line 238
    .local v0, manager:Lorg/lichsword/util/ImageManager;
    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    #getter for: Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->ico:Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->access$2(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 240
    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    #getter for: Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->ico:Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->access$2(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "push"

    invoke-virtual {v0, v2, v3}, Lorg/lichsword/util/ImageManager;->isImageCached(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 241
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "icon image not cache:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    #getter for: Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->ico:Ljava/lang/String;
    invoke-static {v4}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->access$2(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    #getter for: Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->ico:Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->access$2(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :goto_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    #getter for: Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->simg:Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->access$3(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 251
    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    #getter for: Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->simg:Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->access$3(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "push"

    invoke-virtual {v0, v2, v3}, Lorg/lichsword/util/ImageManager;->isImageCached(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 252
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "share image not cache:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    #getter for: Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->simg:Ljava/lang/String;
    invoke-static {v4}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->access$3(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    #getter for: Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->simg:Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->access$3(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    const/4 v1, 0x0

    .line 264
    :cond_1
    return-object v1

    .line 244
    :cond_2
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Check]Icon image cache...OK\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    #getter for: Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->ico:Ljava/lang/String;
    invoke-static {v4}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->access$2(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_3
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v3, "msg.icon is null or empty"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_4
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Check]Share image cache...OK\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    #getter for: Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->simg:Ljava/lang/String;
    invoke-static {v4}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->access$3(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 258
    :cond_5
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v3, "msg.simg is null or empty"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private imagesReady()Z
    .locals 3

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getNewImageUrlList()Ljava/util/List;

    move-result-object v0

    .line 199
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 200
    .local v1, ret:Z
    :goto_0
    if-nez v1, :cond_0

    .line 201
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/model/push/PushMsg;->preparedImages(Ljava/util/List;)V

    .line 203
    :cond_0
    return v1

    .line 199
    .end local v1           #ret:Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public activeNow()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/push/PushMsg;->valid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    :goto_0
    return v2

    .line 138
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v0, v3, v5

    .line 139
    .local v0, now:J
    sget-object v3, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Msg id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nnow "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-wide v3, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->st:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    .line 142
    sget-object v3, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Reason]now is Before start time, not valid.\nNow time  ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 143
    const-string v5, ", but \nstart time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->st:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-wide v3, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->et:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 148
    sget-object v3, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Reason]now is After end time, not valid.\nNow time="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but \nend time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 149
    iget-wide v5, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->et:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/adi/collie/model/push/PushMsg;->imagesReady()Z

    move-result v3

    if-nez v3, :cond_3

    .line 154
    sget-object v3, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v4, "[Reason]Image not prepared...NO-ACTIVE"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public debug()Ljava/lang/String;
    .locals 4

    .prologue
    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "\n>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nst="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->st:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\net="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->et:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ndr="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->dr:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nmsg=\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->debug()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    const-string v1, "\n>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDr()J
    .locals 2

    .prologue
    .line 735
    iget-wide v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->dr:J

    return-wide v0
.end method

.method public getEt()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->et:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    return-object v0
.end method

.method public getSt()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->st:J

    return-wide v0
.end method

.method public getTp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->tp:Ljava/lang/String;

    return-object v0
.end method

.method public hasText()Z
    .locals 4

    .prologue
    .line 180
    const/4 v0, 0x1

    .line 181
    .local v0, result:Z
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    #getter for: Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->txt:Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->access$1(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 187
    :goto_0
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "has txt="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return v0

    .line 182
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 4

    .prologue
    .line 167
    const/4 v0, 0x1

    .line 168
    .local v0, result:Z
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    #getter for: Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->access$0(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 174
    :goto_0
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "has url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return v0

    .line 169
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public preparedImages()V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getNewImageUrlList()Ljava/util/List;

    move-result-object v0

    .line 211
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/model/push/PushMsg;->preparedImages(Ljava/util/List;)V

    .line 212
    return-void
.end method

.method public preparedImages(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 216
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v3, "---------[prepared images start]-------"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Has images not prepared...BAD, below:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v0

    .line 219
    .local v0, manager:Lorg/lichsword/util/ImageManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 223
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v3, "---------[prepared images end]-------"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v0           #manager:Lorg/lichsword/util/ImageManager;
    :goto_1
    return-void

    .line 219
    .restart local v0       #manager:Lorg/lichsword/util/ImageManager;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    .local v1, url:Ljava/lang/String;
    sget-object v3, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "image url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v3, "push"

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1, v3, v4}, Lorg/lichsword/util/ImageManager;->downloadBitmapThread(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    goto :goto_0

    .line 225
    .end local v0           #manager:Lorg/lichsword/util/ImageManager;
    .end local v1           #url:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v3, "all images prepared...OK"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setDr(J)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 739
    iput-wide p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->dr:J

    .line 740
    return-void
.end method

.method public setEt(J)V
    .locals 0
    .parameter "et"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->et:J

    .line 91
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->id:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setMsg(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    .line 99
    return-void
.end method

.method public setSt(J)V
    .locals 0
    .parameter "st"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->st:J

    .line 83
    return-void
.end method

.method public setTp(Ljava/lang/String;)V
    .locals 0
    .parameter "tp"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->tp:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public valid()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 109
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v0, v3, v5

    .line 110
    .local v0, now:J
    sget-object v3, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Msg id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nnow "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-wide v3, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->et:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 113
    sget-object v3, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Reason]After end time, not valid.\nNow time="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but \nend time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->et:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    return v2

    .line 117
    :cond_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    if-nez v3, :cond_1

    .line 118
    sget-object v3, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v4, "[Reason]Message body is null"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 123
    sget-object v3, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Reason]Message body is invalid, so this msg is invalid.\nMsg=\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/adi/collie/model/push/PushMsg;->msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->debug()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v3, "[Passed]Message valid...OK"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v2, 0x1

    goto :goto_0
.end method
