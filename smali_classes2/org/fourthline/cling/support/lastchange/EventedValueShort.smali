.class public Lorg/fourthline/cling/support/lastchange/EventedValueShort;
.super Lorg/fourthline/cling/support/lastchange/EventedValue;
.source "EventedValueShort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/lastchange/EventedValue<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Short;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;-><init>(Ljava/lang/Object;)V

    return-void
.end method

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

    .line 32
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;-><init>([Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method protected getDatatype()Lorg/fourthline/cling/model/types/Datatype;
    .locals 1

    .line 37
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I2_SHORT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    return-object v0
.end method
