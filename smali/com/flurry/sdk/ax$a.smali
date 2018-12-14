.class public final Lcom/flurry/sdk/ax$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/dx<",
        "Lcom/flurry/sdk/ax;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1137
    :cond_0
    new-instance v1, Lcom/flurry/sdk/ax$a$2;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/flurry/sdk/ax$a$2;-><init>(Lcom/flurry/sdk/ax$a;Ljava/io/InputStream;)V

    .line 1144
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 1145
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    .line 1146
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    .line 1147
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 1148
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 1150
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/flurry/sdk/ay;->a(I)Lcom/flurry/sdk/ay;

    move-result-object v11

    .line 1151
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    .line 1152
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 1153
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    .line 1154
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    move/from16 v18, v4

    move-wide/from16 v16, v5

    .line 1155
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 1157
    new-instance v1, Lcom/flurry/sdk/ax;

    const/4 v6, 0x0

    move-object v3, v1

    move-wide/from16 v19, v4

    move/from16 v5, v18

    move-object v4, v6

    move/from16 v21, v5

    move-wide/from16 v5, v16

    invoke-direct/range {v3 .. v9}, Lcom/flurry/sdk/ax;-><init>(Lcom/flurry/sdk/aw;JJI)V

    .line 1160
    iput-boolean v0, v1, Lcom/flurry/sdk/ax;->d:Z

    .line 1161
    iput v10, v1, Lcom/flurry/sdk/ax;->e:I

    .line 1162
    iput-object v11, v1, Lcom/flurry/sdk/ax;->f:Lcom/flurry/sdk/ay;

    .line 1163
    iput-object v12, v1, Lcom/flurry/sdk/ax;->g:Ljava/lang/String;

    .line 1164
    iput v13, v1, Lcom/flurry/sdk/ax;->h:I

    .line 1165
    iput-wide v14, v1, Lcom/flurry/sdk/ax;->i:J

    move/from16 v0, v21

    .line 1166
    iput-boolean v0, v1, Lcom/flurry/sdk/ax;->j:Z

    move-wide/from16 v3, v19

    .line 1167
    iput-wide v3, v1, Lcom/flurry/sdk/ax;->k:J

    return-object v1
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    check-cast p2, Lcom/flurry/sdk/ax;

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 2103
    :cond_0
    new-instance v0, Lcom/flurry/sdk/ax$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ax$a$1;-><init>(Lcom/flurry/sdk/ax$a;Ljava/io/OutputStream;)V

    .line 2110
    iget p1, p2, Lcom/flurry/sdk/ax;->a:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2111
    iget-wide v1, p2, Lcom/flurry/sdk/ax;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2112
    iget-wide v1, p2, Lcom/flurry/sdk/ax;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2113
    iget-boolean p1, p2, Lcom/flurry/sdk/ax;->d:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2114
    iget p1, p2, Lcom/flurry/sdk/ax;->e:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2115
    iget-object p1, p2, Lcom/flurry/sdk/ax;->f:Lcom/flurry/sdk/ay;

    .line 3032
    iget p1, p1, Lcom/flurry/sdk/ay;->e:I

    .line 2115
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2117
    iget-object p1, p2, Lcom/flurry/sdk/ax;->g:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 2118
    iget-object p1, p2, Lcom/flurry/sdk/ax;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 2120
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2123
    :goto_0
    iget p1, p2, Lcom/flurry/sdk/ax;->h:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2124
    iget-wide v1, p2, Lcom/flurry/sdk/ax;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2125
    iget-boolean p1, p2, Lcom/flurry/sdk/ax;->j:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2126
    iget-wide p1, p2, Lcom/flurry/sdk/ax;->k:J

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2128
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
