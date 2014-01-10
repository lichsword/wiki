.class final Lcom/autonavi/aps/amapapi/a$2;
.super Ljava/lang/Object;
.source "APS.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/aps/amapapi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/autonavi/aps/amapapi/a;


# direct methods
.method constructor <init>(Lcom/autonavi/aps/amapapi/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/a$2;->a:Lcom/autonavi/aps/amapapi/a;

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 644
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$2;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0, p1}, Lcom/autonavi/aps/amapapi/a;->b(Lcom/autonavi/aps/amapapi/a;I)V

    .line 645
    return-void
.end method
