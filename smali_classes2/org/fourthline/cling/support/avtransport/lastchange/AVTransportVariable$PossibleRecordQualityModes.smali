.class public Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordQualityModes;
.super Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PossibleRecordQualityModes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray<",
        "Lorg/fourthline/cling/support/model/RecordQualityMode;",
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

    .line 213
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray;-><init>([Ljava/util/Map$Entry;)V

    return-void
.end method

.method public constructor <init>([Lorg/fourthline/cling/support/model/RecordQualityMode;)V
    .locals 0

    .line 209
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray;-><init>([Ljava/lang/Enum;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic enumValueOf([Ljava/lang/String;)[Ljava/lang/Enum;
    .locals 0

    .line 207
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordQualityModes;->enumValueOf([Ljava/lang/String;)[Lorg/fourthline/cling/support/model/RecordQualityMode;

    move-result-object p1

    return-object p1
.end method

.method protected enumValueOf([Ljava/lang/String;)[Lorg/fourthline/cling/support/model/RecordQualityMode;
    .locals 4

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 220
    invoke-static {v3}, Lorg/fourthline/cling/support/model/RecordQualityMode;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/RecordQualityMode;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    return-object p1
.end method
