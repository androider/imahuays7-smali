.class public Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordStorageMedia;
.super Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PossibleRecordStorageMedia"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray<",
        "Lorg/fourthline/cling/support/model/StorageMedium;",
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

    .line 124
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray;-><init>([Ljava/util/Map$Entry;)V

    return-void
.end method

.method public constructor <init>([Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray;-><init>([Ljava/lang/Enum;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic enumValueOf([Ljava/lang/String;)[Ljava/lang/Enum;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordStorageMedia;->enumValueOf([Ljava/lang/String;)[Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object p1

    return-object p1
.end method

.method protected enumValueOf([Ljava/lang/String;)[Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 4

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 131
    invoke-static {v3}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/fourthline/cling/support/model/StorageMedium;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/support/model/StorageMedium;

    return-object p1
.end method
