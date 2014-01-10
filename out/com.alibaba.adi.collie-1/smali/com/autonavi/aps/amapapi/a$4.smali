.class final Lcom/autonavi/aps/amapapi/a$4;
.super Ljava/lang/Object;
.source "APS.java"

# interfaces
.implements Landroid/location/LocationListener;


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
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/a$4;->a:Lcom/autonavi/aps/amapapi/a;

    .line 1969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$4;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0, p1}, Lcom/autonavi/aps/amapapi/a;->b(Lcom/autonavi/aps/amapapi/a;Landroid/location/Location;)V

    .line 1976
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$4;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->l(Lcom/autonavi/aps/amapapi/a;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->reset()V

    .line 1984
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1991
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1996
    packed-switch p2, :pswitch_data_0

    .line 2013
    :goto_0
    :pswitch_0
    return-void

    .line 2006
    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$4;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->l(Lcom/autonavi/aps/amapapi/a;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->reset()V

    goto :goto_0

    .line 2012
    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$4;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->l(Lcom/autonavi/aps/amapapi/a;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->reset()V

    goto :goto_0

    .line 1996
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
