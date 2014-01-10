.class public Lcom/laiwang/openapi/message/LWMessage;
.super Ljava/lang/Object;
.source "LWMessage.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/laiwang/openapi/message/IILWMessage;
.implements Lcom/laiwang/openapi/message/IMessageComponent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/laiwang/openapi/message/LWMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private msgActivity:Ljava/lang/String;

.field private msgAppKey:Ljava/lang/String;

.field private msgChat:Ljava/lang/String;

.field private msgContent:Ljava/lang/String;

.field private msgImageThumbBMP:Landroid/graphics/Bitmap;

.field private msgImageThumbPATH:Ljava/lang/String;

.field private msgImageURL:Ljava/lang/String;

.field private msgLinkUrl:Ljava/lang/String;

.field private msgSecret:Ljava/lang/String;

.field private msgShareType:Ljava/lang/String;

.field private msgSource:Ljava/lang/String;

.field private msgTitle:Ljava/lang/String;

.field private msgType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/laiwang/openapi/message/LWMessage$1;

    invoke-direct {v0}, Lcom/laiwang/openapi/message/LWMessage$1;-><init>()V

    sput-object v0, Lcom/laiwang/openapi/message/LWMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/laiwang/openapi/message/LWMessage;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/laiwang/openapi/message/LWMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/laiwang/openapi/message/LWMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageChat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgChat:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageImageThumbBMP()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgImageThumbBMP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMessageImageThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgImageThumbPATH:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgImageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgSource:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgType:I

    return v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getShareType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgShareType:Ljava/lang/String;

    return-object v0
.end method

.method public isMessageComponent()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x6

    iput v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgType:I

    .line 150
    return-void
.end method

.method public isMessageImage()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x2

    iput v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgType:I

    .line 140
    return-void
.end method

.method public isMessageLink()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x5

    iput v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgType:I

    .line 155
    return-void
.end method

.method public isMessageText()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    iput v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgType:I

    .line 135
    return-void
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "prev"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgType:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgShareType:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgAppKey:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgSecret:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgContent:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgSource:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgImageURL:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgImageThumbPATH:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgTitle:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgLinkUrl:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgChat:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgActivity:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0
    .parameter "appKey"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/laiwang/openapi/message/LWMessage;->msgAppKey:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setMessageActiviy(Ljava/lang/String;)V
    .locals 0
    .parameter "msgActivity"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/laiwang/openapi/message/LWMessage;->msgActivity:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setMessageChat(Ljava/lang/String;)V
    .locals 0
    .parameter "msgChat"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/laiwang/openapi/message/LWMessage;->msgChat:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setMessageImageThumbBMP(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "thumbBMP"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/laiwang/openapi/message/LWMessage;->msgImageThumbBMP:Landroid/graphics/Bitmap;

    .line 230
    return-void
.end method

.method public setMessageImageThumbPath(Ljava/lang/String;)V
    .locals 0
    .parameter "messageImageThumbUrl"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/laiwang/openapi/message/LWMessage;->msgImageThumbPATH:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setMessageImageURL(Ljava/lang/String;)V
    .locals 0
    .parameter "messageImageUrl"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/laiwang/openapi/message/LWMessage;->msgImageURL:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setMessageLinkUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "linkUrl"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/laiwang/openapi/message/LWMessage;->msgLinkUrl:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .locals 0
    .parameter "msgContent"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/laiwang/openapi/message/LWMessage;->msgContent:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setMessageTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/laiwang/openapi/message/LWMessage;->msgTitle:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setMessageType(I)V
    .locals 0
    .parameter "msgType"

    .prologue
    .line 239
    iput p1, p0, Lcom/laiwang/openapi/message/LWMessage;->msgType:I

    .line 240
    return-void
.end method

.method public setMesssageSource(Ljava/lang/String;)V
    .locals 0
    .parameter "msgSource"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/laiwang/openapi/message/LWMessage;->msgSource:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "msgSecret"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/laiwang/openapi/message/LWMessage;->msgSecret:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setShareType(Ljava/lang/String;)V
    .locals 0
    .parameter "msgShareType"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/laiwang/openapi/message/LWMessage;->msgShareType:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 78
    iget v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgShareType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgAppKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgImageURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgImageThumbPATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgLinkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgChat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/laiwang/openapi/message/LWMessage;->msgActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
