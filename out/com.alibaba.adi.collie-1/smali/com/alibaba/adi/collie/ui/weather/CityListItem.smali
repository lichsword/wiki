.class public Lcom/alibaba/adi/collie/ui/weather/CityListItem;
.super Ljava/lang/Object;
.source "CityListItem.java"


# instance fields
.field private has_child:I

.field private name:Ljava/lang/String;

.field private pcode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHas_child()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->has_child:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->pcode:Ljava/lang/String;

    return-object v0
.end method

.method public setHas_child(I)V
    .locals 0
    .parameter "has_child"

    .prologue
    .line 29
    iput p1, p0, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->has_child:I

    .line 30
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->name:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setPcode(Ljava/lang/String;)V
    .locals 0
    .parameter "pcode"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->pcode:Ljava/lang/String;

    .line 22
    return-void
.end method
