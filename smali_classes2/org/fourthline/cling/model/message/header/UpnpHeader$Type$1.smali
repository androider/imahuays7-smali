.class final Lorg/fourthline/cling/model/message/header/UpnpHeader$Type$1;
.super Ljava/util/HashMap;
.source "UpnpHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .line 90
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 91
    invoke-static {}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->values()[Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 92
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
