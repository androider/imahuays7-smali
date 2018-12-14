.class public Lorg/fourthline/cling/model/types/csv/CSVUnsignedIntegerOneByte;
.super Lorg/fourthline/cling/model/types/csv/CSV;
.source "CSVUnsignedIntegerOneByte.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/types/csv/CSV<",
        "Lorg/fourthline/cling/model/types/UnsignedIntegerOneByte;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/fourthline/cling/model/types/csv/CSV;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/types/csv/CSV;-><init>(Ljava/lang/String;)V

    return-void
.end method
