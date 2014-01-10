.class public final Lcom/alibaba/adi/collie/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final DEVICE_STATE:Ljava/lang/String; = "com.ut.permission.DEVICE_STATE"

.field public static final MESSAGE:Ljava/lang/String; = "org.agoo.android.permission.MESSAGE"

.field public static final UPDATE_CREDENTIALS:Ljava/lang/String; = "com.taobao.permission.UPDATE_CREDENTIALS"

.field public static final USE_CREDENTIALS:Ljava/lang/String; = "com.taobao.permission.USE_CREDENTIALS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
