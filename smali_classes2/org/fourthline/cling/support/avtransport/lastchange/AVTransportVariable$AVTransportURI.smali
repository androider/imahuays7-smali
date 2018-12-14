.class public Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$AVTransportURI;
.super Lorg/fourthline/cling/support/lastchange/EventedValueURI;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVTransportURI"
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 288
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueURI;-><init>(Ljava/net/URI;)V

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

    .line 292
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueURI;-><init>([Ljava/util/Map$Entry;)V

    return-void
.end method
