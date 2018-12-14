.class public abstract Lorg/apache/commons/fileupload/FileUploadBase$SizeException;
.super Lorg/apache/commons/fileupload/FileUploadException;
.source "FileUploadBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/FileUploadBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "SizeException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x79cb6aa969014eeeL


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 1234
    invoke-direct {p0, p1}, Lorg/apache/commons/fileupload/FileUploadException;-><init>(Ljava/lang/String;)V

    .line 1235
    iput-wide p2, p0, Lorg/apache/commons/fileupload/FileUploadBase$SizeException;->a:J

    .line 1236
    iput-wide p4, p0, Lorg/apache/commons/fileupload/FileUploadBase$SizeException;->b:J

    return-void
.end method


# virtual methods
.method public getActualSize()J
    .locals 2

    .line 1246
    iget-wide v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$SizeException;->a:J

    return-wide v0
.end method

.method public getPermittedSize()J
    .locals 2

    .line 1256
    iget-wide v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$SizeException;->b:J

    return-wide v0
.end method
