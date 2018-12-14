.class public Lorg/fourthline/cling/support/model/ProtocolInfos;
.super Ljava/util/ArrayList;
.source "ProtocolInfos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lorg/fourthline/cling/support/model/ProtocolInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-static {p1}, Lorg/fourthline/cling/model/ModelUtil;->fromCommaSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 38
    new-instance v3, Lorg/fourthline/cling/support/model/ProtocolInfo;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/ProtocolInfos;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lorg/fourthline/cling/support/model/ProtocolInfo;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 30
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/support/model/ProtocolInfos;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/ProtocolInfos;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/support/model/ProtocolInfo;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/ProtocolInfos;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
