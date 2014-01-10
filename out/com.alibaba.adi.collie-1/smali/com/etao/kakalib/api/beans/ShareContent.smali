.class public Lcom/etao/kakalib/api/beans/ShareContent;
.super Ljava/lang/Object;
.source "ShareContent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_COMMODITY:Ljava/lang/String; = "1"

.field public static final TYPE_ORDER:Ljava/lang/String; = "3"

.field public static final TYPE_PRODUCT:Ljava/lang/String; = "2"

.field private static final serialVersionUID:J = -0x7ad5fa7e18e5a640L


# instance fields
.field private audio:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private items:[Lcom/etao/kakalib/api/beans/OrderItem;

.field private link:Ljava/lang/String;

.field private pic1:Ljava/lang/String;

.field private pic2:Ljava/lang/String;

.field private pic3:Ljava/lang/String;

.field private pic4:Ljava/lang/String;

.field private seq:Ljava/lang/String;

.field private snap1:Ljava/lang/String;

.field private snap2:Ljava/lang/String;

.field private snap3:Ljava/lang/String;

.field private snap4:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private video:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->audio:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()[Lcom/etao/kakalib/api/beans/OrderItem;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->items:[Lcom/etao/kakalib/api/beans/OrderItem;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getPic1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->pic1:Ljava/lang/String;

    return-object v0
.end method

.method public getPic2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->pic2:Ljava/lang/String;

    return-object v0
.end method

.method public getPic3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->pic3:Ljava/lang/String;

    return-object v0
.end method

.method public getPic4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->pic4:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public getSnap1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->snap1:Ljava/lang/String;

    return-object v0
.end method

.method public getSnap2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->snap2:Ljava/lang/String;

    return-object v0
.end method

.method public getSnap3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->snap3:Ljava/lang/String;

    return-object v0
.end method

.method public getSnap4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->snap4:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareContent;->video:Ljava/lang/String;

    return-object v0
.end method

.method public setAudio(Ljava/lang/String;)V
    .locals 0
    .parameter "audio"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->audio:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->content:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setItems([Lcom/etao/kakalib/api/beans/OrderItem;)V
    .locals 0
    .parameter "items"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->items:[Lcom/etao/kakalib/api/beans/OrderItem;

    .line 148
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->link:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setPic1(Ljava/lang/String;)V
    .locals 0
    .parameter "pic1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->pic1:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setPic2(Ljava/lang/String;)V
    .locals 0
    .parameter "pic2"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->pic2:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setPic3(Ljava/lang/String;)V
    .locals 0
    .parameter "pic3"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->pic3:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setPic4(Ljava/lang/String;)V
    .locals 0
    .parameter "pic4"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->pic4:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setSeq(Ljava/lang/String;)V
    .locals 0
    .parameter "seq"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->seq:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSnap1(Ljava/lang/String;)V
    .locals 0
    .parameter "snap1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->snap1:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setSnap2(Ljava/lang/String;)V
    .locals 0
    .parameter "snap2"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->snap2:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setSnap3(Ljava/lang/String;)V
    .locals 0
    .parameter "snap3"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->snap3:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setSnap4(Ljava/lang/String;)V
    .locals 0
    .parameter "snap4"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->snap4:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->text:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->type:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setVideo(Ljava/lang/String;)V
    .locals 0
    .parameter "video"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareContent;->video:Ljava/lang/String;

    .line 108
    return-void
.end method
