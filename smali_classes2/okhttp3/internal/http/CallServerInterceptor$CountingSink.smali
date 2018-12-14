.class final Lokhttp3/internal/http/CallServerInterceptor$CountingSink;
.super Lokio/f;
.source "CallServerInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/CallServerInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CountingSink"
.end annotation


# instance fields
.field successfulCount:J


# direct methods
.method constructor <init>(Lokio/q;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lokio/f;-><init>(Lokio/q;)V

    return-void
.end method


# virtual methods
.method public write(Lokio/c;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-super {p0, p1, p2, p3}, Lokio/f;->write(Lokio/c;J)V

    .line 150
    iget-wide v0, p0, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    add-long v2, v0, p2

    iput-wide v2, p0, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    return-void
.end method
