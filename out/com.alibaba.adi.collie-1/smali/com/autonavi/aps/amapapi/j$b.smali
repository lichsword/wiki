.class final Lcom/autonavi/aps/amapapi/j$b;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/aps/amapapi/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field final synthetic b:Lcom/autonavi/aps/amapapi/j;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/autonavi/aps/amapapi/j;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/j$b;->b:Lcom/autonavi/aps/amapapi/j;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/j$b;->a:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/aps/amapapi/j$b;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/aps/amapapi/j;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/autonavi/aps/amapapi/j$b;-><init>(Lcom/autonavi/aps/amapapi/j;)V

    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/j$b;->c:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/j$b;->a:Ljava/lang/String;

    .line 54
    :cond_0
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const-string v0, "sres"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/aps/amapapi/j$b;->c:Z

    .line 70
    :cond_0
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    const-string v0, "sres"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/aps/amapapi/j$b;->c:Z

    .line 62
    :cond_0
    return-void
.end method
