.class public abstract Lcom/raizlabs/android/dbflow/a/h;
.super Ljava/lang/Object;
.source "TypeConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataClass:",
        "Ljava/lang/Object;",
        "ModelClass:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelClass;)TDataClass;"
        }
    .end annotation
.end method
