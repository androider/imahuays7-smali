.class public Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$HorizontalKeystone;
.super Lorg/fourthline/cling/support/lastchange/EventedValueShort;
.source "RenderingControlVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HorizontalKeystone"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Short;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueShort;-><init>(Ljava/lang/Short;)V

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

    .line 169
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueShort;-><init>([Ljava/util/Map$Entry;)V

    return-void
.end method
