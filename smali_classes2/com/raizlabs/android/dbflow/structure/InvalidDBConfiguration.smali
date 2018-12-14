.class public Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;
.super Ljava/lang/RuntimeException;
.source "InvalidDBConfiguration.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "No Databases were found. Did you create a Database Annotation placeholder class?"

    .line 9
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
