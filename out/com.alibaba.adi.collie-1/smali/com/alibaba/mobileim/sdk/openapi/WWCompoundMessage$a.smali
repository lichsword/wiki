.class public Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage$a;
.super Ljava/lang/Object;
.source "WWCompoundMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private hO:Ljava/lang/String;

.field private mLink:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected aA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage$a;->hO:Ljava/lang/String;

    return-object v0
.end method

.method protected getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage$a;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alibaba/mobileim/sdk/openapi/WWCompoundMessage$a;->mText:Ljava/lang/String;

    return-object v0
.end method
