.class public Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentPlayMode;
.super Lorg/fourthline/cling/support/lastchange/EventedValueEnum;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentPlayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/lastchange/EventedValueEnum<",
        "Lorg/fourthline/cling/support/model/PlayMode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/model/PlayMode;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueEnum;-><init>(Ljava/lang/Enum;)V

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

    .line 153
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueEnum;-><init>([Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic enumValueOf(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentPlayMode;->enumValueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/PlayMode;

    move-result-object p1

    return-object p1
.end method

.method protected enumValueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/PlayMode;
    .locals 0

    .line 158
    invoke-static {p1}, Lorg/fourthline/cling/support/model/PlayMode;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/PlayMode;

    move-result-object p1

    return-object p1
.end method
