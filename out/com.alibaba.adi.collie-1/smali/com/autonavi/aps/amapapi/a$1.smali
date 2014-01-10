.class final Lcom/autonavi/aps/amapapi/a$1;
.super Landroid/telephony/PhoneStateListener;
.source "APS.java"


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
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/a$1;->a:Lcom/autonavi/aps/amapapi/a;

    .line 532
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3
    .parameter

    .prologue
    .line 535
    if-nez p1, :cond_0

    .line 551
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$1;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->e(Lcom/autonavi/aps/amapapi/a;)V

    .line 542
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$1;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->f(Lcom/autonavi/aps/amapapi/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    goto :goto_0

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$1;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0, p1}, Lcom/autonavi/aps/amapapi/a;->a(Lcom/autonavi/aps/amapapi/a;Landroid/telephony/CellLocation;)V

    .line 550
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$1;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/autonavi/aps/amapapi/a;->a(Lcom/autonavi/aps/amapapi/a;J)V

    goto :goto_0
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter

    .prologue
    .line 593
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 594
    packed-switch v0, :pswitch_data_0

    .line 599
    :goto_0
    return-void

    .line 596
    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$1;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->h(Lcom/autonavi/aps/amapapi/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 597
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$1;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->i(Lcom/autonavi/aps/amapapi/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 598
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$1;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->j(Lcom/autonavi/aps/amapapi/a;)V

    goto :goto_0

    .line 594
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSignalStrengthChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 558
    const/16 v0, -0x71

    .line 559
    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a$1;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v1}, Lcom/autonavi/aps/amapapi/a;->g(Lcom/autonavi/aps/amapapi/a;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 565
    :goto_0
    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a$1;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v1, v0}, Lcom/autonavi/aps/amapapi/a;->a(Lcom/autonavi/aps/amapapi/a;I)V

    .line 570
    return-void

    .line 561
    :pswitch_0
    invoke-static {p1}, Lcom/autonavi/aps/amapapi/Utils;->asu2Dbm(I)I

    move-result v0

    goto :goto_0

    .line 564
    :pswitch_1
    invoke-static {p1}, Lcom/autonavi/aps/amapapi/Utils;->asu2Dbm(I)I

    move-result v0

    goto :goto_0

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter

    .prologue
    .line 577
    const/16 v0, -0x71

    .line 578
    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a$1;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v1}, Lcom/autonavi/aps/amapapi/a;->g(Lcom/autonavi/aps/amapapi/a;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 584
    :goto_0
    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a$1;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v1, v0}, Lcom/autonavi/aps/amapapi/a;->a(Lcom/autonavi/aps/amapapi/a;I)V

    .line 589
    return-void

    .line 580
    :pswitch_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->asu2Dbm(I)I

    move-result v0

    goto :goto_0

    .line 583
    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    goto :goto_0

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
