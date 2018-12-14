.class public Lcom/facebook/soloader/f;
.super Lcom/facebook/soloader/n;
.source "ExtractFromZipSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/f$a;,
        Lcom/facebook/soloader/f$b;
    }
.end annotation


# instance fields
.field protected final c:Ljava/io/File;

.field protected final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iput-object p3, p0, Lcom/facebook/soloader/f;->c:Ljava/io/File;

    .line 51
    iput-object p4, p0, Lcom/facebook/soloader/f;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Lcom/facebook/soloader/n$e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/facebook/soloader/f$b;

    invoke-direct {v0, p0, p0}, Lcom/facebook/soloader/f$b;-><init>(Lcom/facebook/soloader/f;Lcom/facebook/soloader/n;)V

    return-object v0
.end method
