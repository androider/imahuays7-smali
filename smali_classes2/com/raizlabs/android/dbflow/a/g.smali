.class public Lcom/raizlabs/android/dbflow/a/g;
.super Lcom/raizlabs/android/dbflow/a/h;
.source "SqlDateConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/a/h<",
        "Ljava/lang/Long;",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/sql/Date;)Ljava/lang/Long;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/sql/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Ljava/sql/Date;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/a/g;->a(Ljava/sql/Date;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
