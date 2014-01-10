.class public Lcom/etao/kakalib/api/beans/DBarcodeResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "DBarcodeResult.java"


# static fields
.field public static final SECURITY_BLACK:Ljava/lang/String; = "B"

.field public static final SECURITY_UNKNOWN:Ljava/lang/String; = "U"

.field public static final SECURITY_WHITE:Ljava/lang/String; = "W"

.field private static final serialVersionUID:J = 0x5779121ca80ab35cL


# instance fields
.field private card:Lcom/etao/kakalib/api/beans/BaseCard;

.field private security:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCard()Lcom/etao/kakalib/api/beans/BaseCard;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/DBarcodeResult;->card:Lcom/etao/kakalib/api/beans/BaseCard;

    return-object v0
.end method

.method public getSecurity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/DBarcodeResult;->security:Ljava/lang/String;

    return-object v0
.end method

.method public setCard(Lcom/etao/kakalib/api/beans/BaseCard;)V
    .locals 0
    .parameter "card"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/DBarcodeResult;->card:Lcom/etao/kakalib/api/beans/BaseCard;

    .line 29
    return-void
.end method

.method public setSecurity(Ljava/lang/String;)V
    .locals 0
    .parameter "security"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/DBarcodeResult;->security:Ljava/lang/String;

    .line 21
    return-void
.end method
