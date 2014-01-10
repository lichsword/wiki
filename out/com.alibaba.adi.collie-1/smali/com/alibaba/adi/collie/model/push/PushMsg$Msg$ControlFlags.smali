.class public Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;
.super Ljava/lang/Object;
.source "PushMsg.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlFlags"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;
    }
.end annotation


# static fields
.field public static final CTR_UNKNOWN:I = 0x0

.field private static final serialVersionUID:J = 0x5747691bee15c857L


# instance fields
.field private final COUNT:I

.field private ctrlAttachImage:C

.field private ctrlCancelBtn:C

.field private ctrlDimiss:C

.field private ctrlLimitShowMaxOnce:C

.field private ctrlOpenUrl:C

.field private ctrlPos:C

.field private ctrlShare:C

.field private ctrlTextEffects:C

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    invoke-static {}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->values()[Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->COUNT:I

    .line 550
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "param flag ctr is null"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :goto_0
    return-void

    .line 555
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->COUNT:I

    if-ge v0, v1, :cond_1

    .line 556
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param ctr length <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_1
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->text:Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->text:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_POS:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlPos:C

    .line 562
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->text:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_OPEN_URL:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlOpenUrl:C

    .line 563
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->text:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_DIMISS:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlDimiss:C

    .line 564
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->text:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_CANCEL_BTN:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlCancelBtn:C

    .line 565
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->text:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_SHARE:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlShare:C

    .line 566
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->text:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_ATTACH_IMAGE:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlAttachImage:C

    .line 567
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->text:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_TEXT_EFFECTS:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlTextEffects:C

    .line 568
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->text:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_LIMIT_SHOW_MAX_ONCE:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlLimitShowMaxOnce:C

    goto/16 :goto_0
.end method


# virtual methods
.method public attachNoImage()Z
    .locals 3

    .prologue
    const/16 v2, 0x41

    .line 644
    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlAttachImage:C

    if-eq v2, v0, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlAttachImage:C

    const/16 v1, 0x43

    if-gt v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlPos:C

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public attachScreenShot()Z
    .locals 2

    .prologue
    .line 648
    const/16 v0, 0x42

    iget-char v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlAttachImage:C

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public attachWebUrlImage()Z
    .locals 2

    .prologue
    .line 652
    const/16 v0, 0x43

    iget-char v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlAttachImage:C

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public blingTextEffects()Z
    .locals 2

    .prologue
    .line 665
    const/16 v0, 0x43

    iget-char v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlTextEffects:C

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public debug()Ljava/lang/String;
    .locals 3

    .prologue
    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 700
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "\n>>>>>>>>>>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nflag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_POS:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")ctrlPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlPos:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_OPEN_URL:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")ctrlOpenUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlOpenUrl:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_DIMISS:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")ctrlDismiss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlDimiss:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_CANCEL_BTN:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")ctrlCancelBtn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlCancelBtn:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_TEXT_EFFECTS:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")ctrlTextEffects="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlTextEffects:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_SHARE:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")ctrlShare="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlShare:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_ATTACH_IMAGE:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")ctrlAttachImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlAttachImage:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_LIMIT_SHOW_MAX_ONCE:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")ctrlLimitShowMaxOnce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 710
    iget-char v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlLimitShowMaxOnce:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string v1, "\n>>>>>>>>>>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dismissByClick()Z
    .locals 2

    .prologue
    .line 602
    const/16 v0, 0x42

    iget-char v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlDimiss:C

    if-eq v0, v1, :cond_0

    const/16 v0, 0x44

    iget-char v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlDimiss:C

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dismissByUnlock()Z
    .locals 2

    .prologue
    .line 598
    const/16 v0, 0x43

    iget-char v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlDimiss:C

    if-eq v0, v1, :cond_0

    const/16 v0, 0x44

    iget-char v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlDimiss:C

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public enableShare()Z
    .locals 2

    .prologue
    .line 617
    const/16 v0, 0x42

    iget-char v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlShare:C

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableShareInHomePage()Z
    .locals 3

    .prologue
    const/16 v2, 0x41

    .line 628
    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlShare:C

    if-eq v2, v0, :cond_0

    const/16 v0, 0x43

    iget-char v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlShare:C

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlShare:C

    const/16 v1, 0x44

    if-gt v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlPos:C

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public enableShareInWebPage()Z
    .locals 3

    .prologue
    const/16 v2, 0x44

    const/16 v1, 0x41

    .line 638
    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlShare:C

    if-eq v1, v0, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlShare:C

    if-eq v2, v0, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlShare:C

    if-gt v0, v2, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlPos:C

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public limitShowMaxOnce()Z
    .locals 2

    .prologue
    .line 669
    const/16 v0, 0x42

    iget-char v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlLimitShowMaxOnce:C

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nerverDismiss()Z
    .locals 3

    .prologue
    const/16 v2, 0x41

    .line 594
    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlDimiss:C

    if-eq v2, v0, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlDimiss:C

    const/16 v1, 0x47

    if-gt v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlPos:C

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public openUrlByInner()Z
    .locals 3

    .prologue
    const/16 v2, 0x41

    .line 584
    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlOpenUrl:C

    if-eq v2, v0, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlOpenUrl:C

    const/16 v1, 0x42

    if-gt v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlPos:C

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public openUrlByOutside()Z
    .locals 2

    .prologue
    .line 588
    const/16 v0, 0x42

    iget-char v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlOpenUrl:C

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public posCenter()Z
    .locals 2

    .prologue
    .line 578
    const/16 v0, 0x42

    iget-char v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlPos:C

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public posTop()Z
    .locals 3

    .prologue
    const/16 v2, 0x41

    .line 574
    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlPos:C

    if-eq v2, v0, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlPos:C

    const/16 v1, 0x42

    if-gt v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlPos:C

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public scrollTextEffects()Z
    .locals 2

    .prologue
    .line 661
    const/16 v0, 0x42

    iget-char v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlTextEffects:C

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCancelBtn()Z
    .locals 3

    .prologue
    const/16 v2, 0x41

    .line 608
    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlCancelBtn:C

    if-eq v2, v0, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlCancelBtn:C

    const/16 v1, 0x42

    if-gt v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlPos:C

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public staicTextEffects()Z
    .locals 3

    .prologue
    const/16 v2, 0x41

    .line 657
    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlTextEffects:C

    if-eq v2, v0, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlTextEffects:C

    const/16 v1, 0x43

    if-gt v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->ctrlPos:C

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public valid()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 680
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "ctrl characters is null Or empty"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :goto_0
    return v0

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->COUNT:I

    if-ge v1, v2, :cond_1

    .line 686
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ctrl characters length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
