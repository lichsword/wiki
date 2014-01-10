.class public Lcom/alibaba/adi/collie/model/AdiConstants$MtopConfig;
.super Ljava/lang/Object;
.source "AdiConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/model/AdiConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtopConfig"
.end annotation


# static fields
.field public static final APPKEY:Ljava/lang/String; = "21579970"

.field public static final APPSECRET:Ljava/lang/String; = "ea09b68a69334390a4068421936e896f"

.field public static final MAPPKEY:Ljava/lang/String; = "21579970"

.field public static final MAPPSECRET:Ljava/lang/String; = "ea09b68a69334390a4068421936e896f"

.field public static MTOP_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const-string v0, "http://api.m.taobao.com/rest/api3.do?"

    sput-object v0, Lcom/alibaba/adi/collie/model/AdiConstants$MtopConfig;->MTOP_URL:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
