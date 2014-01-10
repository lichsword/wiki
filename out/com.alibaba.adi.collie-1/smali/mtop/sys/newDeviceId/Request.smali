.class public Lmtop/sys/newDeviceId/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final API_NAME:Ljava/lang/String; = "mtop.sys.newDeviceId"

.field public static final NEED_ECODE:Z = false

.field private static final serialVersionUID:J = -0x2f923859acdc443cL

.field public static final version:Ljava/lang/String; = "4.0"


# instance fields
.field private c0:Ljava/lang/String;

.field private c1:Ljava/lang/String;

.field private c2:Ljava/lang/String;

.field private c3:Ljava/lang/String;

.field private c4:Ljava/lang/String;

.field private c5:Ljava/lang/String;

.field private c6:Ljava/lang/String;

.field private device_global_id:Ljava/lang/String;

.field private new_device:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getC0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmtop/sys/newDeviceId/Request;->c0:Ljava/lang/String;

    return-object v0
.end method

.method public getC1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lmtop/sys/newDeviceId/Request;->c1:Ljava/lang/String;

    return-object v0
.end method

.method public getC2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmtop/sys/newDeviceId/Request;->c2:Ljava/lang/String;

    return-object v0
.end method

.method public getC3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmtop/sys/newDeviceId/Request;->c3:Ljava/lang/String;

    return-object v0
.end method

.method public getC4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lmtop/sys/newDeviceId/Request;->c4:Ljava/lang/String;

    return-object v0
.end method

.method public getC5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmtop/sys/newDeviceId/Request;->c5:Ljava/lang/String;

    return-object v0
.end method

.method public getC6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmtop/sys/newDeviceId/Request;->c6:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_global_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lmtop/sys/newDeviceId/Request;->device_global_id:Ljava/lang/String;

    return-object v0
.end method

.method public getNew_device()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lmtop/sys/newDeviceId/Request;->new_device:Z

    return v0
.end method

.method public setC0(Ljava/lang/String;)V
    .locals 0
    .parameter "c0"

    .prologue
    .line 46
    iput-object p1, p0, Lmtop/sys/newDeviceId/Request;->c0:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setC1(Ljava/lang/String;)V
    .locals 0
    .parameter "c1"

    .prologue
    .line 52
    iput-object p1, p0, Lmtop/sys/newDeviceId/Request;->c1:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setC2(Ljava/lang/String;)V
    .locals 0
    .parameter "c2"

    .prologue
    .line 58
    iput-object p1, p0, Lmtop/sys/newDeviceId/Request;->c2:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setC3(Ljava/lang/String;)V
    .locals 0
    .parameter "c3"

    .prologue
    .line 64
    iput-object p1, p0, Lmtop/sys/newDeviceId/Request;->c3:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setC4(Ljava/lang/String;)V
    .locals 0
    .parameter "c4"

    .prologue
    .line 70
    iput-object p1, p0, Lmtop/sys/newDeviceId/Request;->c4:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setC5(Ljava/lang/String;)V
    .locals 0
    .parameter "c5"

    .prologue
    .line 76
    iput-object p1, p0, Lmtop/sys/newDeviceId/Request;->c5:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setC6(Ljava/lang/String;)V
    .locals 0
    .parameter "c6"

    .prologue
    .line 82
    iput-object p1, p0, Lmtop/sys/newDeviceId/Request;->c6:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setDevice_global_id(Ljava/lang/String;)V
    .locals 0
    .parameter "device_global_id"

    .prologue
    .line 34
    iput-object p1, p0, Lmtop/sys/newDeviceId/Request;->device_global_id:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setNew_device(Z)V
    .locals 0
    .parameter "new_device"

    .prologue
    .line 40
    iput-boolean p1, p0, Lmtop/sys/newDeviceId/Request;->new_device:Z

    .line 41
    return-void
.end method
