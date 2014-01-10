.class public Lcom/etao/kakalib/api/beans/MailTraceWrapper;
.super Ljava/lang/Object;
.source "MailTraceWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x24570efa930bd575L


# instance fields
.field private traces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etao/kakalib/express/ExpressResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTraces()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etao/kakalib/express/ExpressResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MailTraceWrapper;->traces:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setTraces(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etao/kakalib/express/ExpressResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, traces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/etao/kakalib/express/ExpressResult;>;"
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MailTraceWrapper;->traces:Ljava/util/ArrayList;

    .line 20
    return-void
.end method
