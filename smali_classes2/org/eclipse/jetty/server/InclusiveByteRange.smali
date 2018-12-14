.class public Lorg/eclipse/jetty/server/InclusiveByteRange;
.super Ljava/lang/Object;
.source "InclusiveByteRange.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field first:J

.field last:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lorg/eclipse/jetty/server/InclusiveByteRange;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/InclusiveByteRange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->first:J

    .line 55
    iput-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    .line 59
    iput-wide p1, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->first:J

    .line 60
    iput-wide p3, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    return-void
.end method

.method public static satisfiableRanges(Ljava/util/Enumeration;J)Ljava/util/List;
    .locals 14

    const/4 v1, 0x0

    move-object v2, v1

    .line 87
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_a

    .line 89
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, "=,"

    const/4 v7, 0x0

    invoke-direct {v5, v3, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v3, v1

    .line 95
    :goto_1
    :try_start_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v6, :cond_0

    .line 99
    :try_start_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v3, 0x2d

    .line 103
    :try_start_2
    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_7

    const-string v8, "-"

    add-int/lit8 v9, v3, 0x1

    .line 104
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-ltz v8, :cond_1

    goto/16 :goto_3

    :cond_1
    const-wide/16 v10, -0x1

    if-nez v3, :cond_3

    .line 113
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v9, v3, :cond_2

    .line 114
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide v12, v10

    goto :goto_2

    .line 117
    :cond_2
    sget-object v3, Lorg/eclipse/jetty/server/InclusiveByteRange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "Bad range format: {}"

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v6, v9, v7

    invoke-interface {v3, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 121
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v9, v8, :cond_4

    .line 123
    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 124
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_2

    .line 127
    :cond_4
    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide v12, v8

    move-wide v8, v10

    :goto_2
    cmp-long v3, v12, v10

    if-nez v3, :cond_5

    cmp-long v3, v8, v10

    if-nez v3, :cond_5

    goto/16 :goto_0

    :cond_5
    cmp-long v3, v12, v10

    if-eqz v3, :cond_6

    cmp-long v3, v8, v10

    if-eqz v3, :cond_6

    cmp-long v3, v12, v8

    if-lez v3, :cond_6

    goto/16 :goto_0

    :cond_6
    cmp-long v3, v12, p1

    if-gez v3, :cond_8

    .line 137
    new-instance v3, Lorg/eclipse/jetty/server/InclusiveByteRange;

    invoke-direct {v3, v12, v13, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;-><init>(JJ)V

    .line 138
    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    goto :goto_4

    :cond_7
    :goto_3
    const-string v3, "bytes"

    .line 106
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    :goto_4
    move-object v3, v6

    goto/16 :goto_1

    .line 108
    :cond_9
    sget-object v3, Lorg/eclipse/jetty/server/InclusiveByteRange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "Bad range format: {}"

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v6, v9, v7

    invoke-interface {v3, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v6, v3

    :goto_5
    move-object v3, v0

    .line 143
    :try_start_3
    sget-object v8, Lorg/eclipse/jetty/server/InclusiveByteRange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "Bad range format: {}"

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v6, v12, v7

    invoke-interface {v8, v9, v12}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    sget-object v8, Lorg/eclipse/jetty/server/InclusiveByteRange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v6, v3

    :goto_6
    move-object v3, v0

    .line 151
    sget-object v5, Lorg/eclipse/jetty/server/InclusiveByteRange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "Bad range format: {}"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v7

    invoke-interface {v5, v8, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    sget-object v4, Lorg/eclipse/jetty/server/InclusiveByteRange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 155
    :cond_a
    invoke-static {v2, v4}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static to416HeaderRangeString(J)Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "bytes */"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFirst()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->first:J

    return-wide v0
.end method

.method public getFirst(J)J
    .locals 6

    .line 161
    iget-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->first:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 163
    iget-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    sub-long v4, p1, v0

    cmp-long p1, v4, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v4

    :goto_0
    return-wide v2

    .line 168
    :cond_1
    iget-wide p1, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->first:J

    return-wide p1
.end method

.method public getLast()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    return-wide v0
.end method

.method public getLast(J)J
    .locals 7

    .line 174
    iget-wide v0, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->first:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v0, 0x1

    if-gez v4, :cond_0

    sub-long v2, p1, v0

    return-wide v2

    .line 177
    :cond_0
    iget-wide v4, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_2

    iget-wide v2, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    cmp-long v4, v2, p1

    if-ltz v4, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    iget-wide p1, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    return-wide p1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    sub-long v2, p1, v0

    return-wide v2
.end method

.method public getSize(J)J
    .locals 4

    .line 185
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getLast(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide p1

    sub-long v2, v0, p1

    const-wide/16 p1, 0x1

    add-long v0, v2, p1

    return-wide v0
.end method

.method public toHeaderRangeString(J)Ljava/lang/String;
    .locals 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "bytes "

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getLast(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 217
    iget-wide v1, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->first:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-wide v1, p0, Lorg/eclipse/jetty/server/InclusiveByteRange;->last:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
