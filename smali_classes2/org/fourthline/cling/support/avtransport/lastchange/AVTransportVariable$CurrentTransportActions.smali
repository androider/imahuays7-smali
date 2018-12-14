.class public Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTransportActions;
.super Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentTransportActions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray<",
        "Lorg/fourthline/cling/support/model/TransportAction;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 332
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray;-><init>([Ljava/util/Map$Entry;)V

    return-void
.end method

.method public constructor <init>([Lorg/fourthline/cling/support/model/TransportAction;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray;-><init>([Ljava/lang/Enum;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic enumValueOf([Ljava/lang/String;)[Ljava/lang/Enum;
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTransportActions;->enumValueOf([Ljava/lang/String;)[Lorg/fourthline/cling/support/model/TransportAction;

    move-result-object p1

    return-object p1
.end method

.method protected enumValueOf([Ljava/lang/String;)[Lorg/fourthline/cling/support/model/TransportAction;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 337
    new-array p1, v0, [Lorg/fourthline/cling/support/model/TransportAction;

    return-object p1

    .line 338
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 339
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 340
    invoke-static {v3}, Lorg/fourthline/cling/support/model/TransportAction;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportAction;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/fourthline/cling/support/model/TransportAction;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/support/model/TransportAction;

    return-object p1
.end method
