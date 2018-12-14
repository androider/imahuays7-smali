.class final Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$2;
.super Ljava/lang/Object;
.source "JSONPojoConvertor.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/Number;)Ljava/lang/Object;
    .locals 1

    .line 390
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method
