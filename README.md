<h1 align="center">Hi, I’m Ayesha 👋</h1>
<p align="center">
Senior CS @ UT Tyler • AI/ML • FastAPI • RAG • PostgreSQL (pgvector) • Voice Agents
</p>

---

### About Me
I build AI systems that actually ship. My flagship project is the **Virtual Teaching Assistant (VTA)** for UT Tyler, deployed on the UT System’s private cloud. It runs directly on professors’ notes with guardrails to ensure secure, accurate answers and includes dashboards for faculty to understand student trends. I also built the **Noodle Agent** during my internship at Noodle Seed,an agent that remembers context, supports voice interactions, summarizes conversations, and connects users to humans when needed.

- Email: **ayeshaa.khalid89@gmail.com**
- LinkedIn: **https://linkedin.com/in/ayesha-khalid-4abb97234**

---

## 🚀 Featured Projects

### 1) Virtual Teaching Assistant (VTA)
Built for The University of Texas at Tyler; deployed on the UT System’s private cloud.

- **What it does:**  
  - Answers using professors’ source notes (guardrails prevent drift).  
  - **Students:** Acts as a teaching assistant.  
  - **Faculty:** Reveals where students struggle and trends across classes.  
  - **Pilot study:** Launching soon.  
- **My role:** Developed from the ground up (architecture, retrieval pipeline, dashboards).

**Tech:** FastAPI • React • PostgreSQL + pgvector • **RAG (Retrieval-Augmented Generation)** • Docker • NGINX


**First image shows the Student-side interface of the Virtual Teaching Assistant (VTA); second image shows the Faculty Dashboard**

<!-- Student and Faculty UI -->
<img src="assets/images/student%20side.png" width="900" alt="Student side"/>
<img src="assets/images/faculty%20side.png" width="900" alt="Faculty side"/>

<!-- Sentiment analysis workflow -->
**The next two images, captured during the development phase, demonstrate testing of a sentiment analysis workflow: initially classifying each student query (positive/negative/neutral), later redesigned to comply with FERPA by aggregating sentiment at the topic level rather than per student**

<img src="assets/images/b7a283cb-1964-465a-aa0b-5fdbd799260b.png" width="900" alt="Sentiment analysis 1"/>
<img src="assets/images/sentiment%20analysis2.png" width="900" alt="Sentiment analysis 2"/>


**Short demo**

<!-- Use one of these (keep GIF or MP4, remove whichever you don't need) -->
<img src="assets/gifs/VTA-demo.gif" width="900" alt="VTA demo"/>
[during the early stages while testing](https://drive.google.com/file/d/1jQTqvws93JTV5bCdw8rvA-M49xWB-r2K/view?usp=sharing)
<!-- or MP4
<video src="assets/videos/VTA-demo.mp4" width="900" controls></video>
--
****Key snippet (Python)** snippet (Python)**

```python
# Simplified retrieval: pgvector cosine similarity
def retrieve(conn, q_embed, k=5):
    rows = conn.execute(
        """
        SELECT chunk, 1 - (embedding <=> :q) AS score
        FROM documents
        ORDER BY embedding <=> :q
        LIMIT :k
        """,
        {"q": q_embed, "k": k},
    ).fetchall()
    return [dict(r) for r in rows]
```

---

### 2) Noodle Agent (Noodle Seed)
Deployed on Fly.dev; planned integration into the company website.

- **What it does:**  
  - Human-like conversations with **context memory** across sessions.  
  - **Voice-to-text** & **text-to-voice**.  
  - Summarizes conversations and can route users to a human.  
- **My role:** Agent behaviors, voice loop, context management, deployment.

**Tech:** Next.js • Supabase • Voice Agents • WebSocket


###  Demo – Noodle Agent
[![Watch the Noodle Agent Demo](assets/images/noodle_agent_demo.png)](https://drive.google.com/file/d/1sNWOdkUAWuPCqSBASFrmoXTMQg6c7_OE/view?usp=sharing)

<!-- Use one of these (keep GIF or MP4, remove whichever you don't need) -->
<img src="assets/gifs/Noodleagent-demo.gif" width="900" alt="Noodle Agent demo"/>
<!-- or MP4
<video src="assets/videos/Noodleagent-demo.mp4" width="900" controls></video>
-->

**Key snippet (HTML)**

```html
<!-- Minimal HTML component -->
<div>
  <h2>Noodle Agent</h2>
  <p>This is a placeholder HTML component for the Noodle Agent project.</p>
</div>
```

---

## 🏆 Achievements — Conferences & Publications

<img src="assets/images/achievements.png" width="900" alt="Conference & Paper Highlights"/>

**Conferences & Presentations**

- **Annual Research Showcase, UT Tyler, Tyler, TX, 2025**  
  *VTA: Enhancing Teaching and Learning with Virtual Teaching Assistant*  
  **Authors:** A. Khalid, S. Dakshit, K. Mokhtari

- **UT System AI Symposium in Healthcare, Houston, TX, 2025**  
  *Virtual Teaching Assistants (VTAs): An AI-Driven Framework for Personalized Learning Across Disciplines*  
  **Authors:** A. Khalid, S. Dakshit, K. Mokhtari

- **Texas Advanced Computing Center for Texas Researchers Symposium (TACCSTER), Austin, TX, 2025 (forthcoming)**  
  *Bridging AI and Education: The Virtual Teaching Assistant*  
  **Authors:** A. Khalid, S. Dakshit, K. Mokhtari

**Paper (Accepted)**

Khalid, A., Dakshit, S., & Mokhtari, K. (In Press). *Human-AI Partnerships in Higher Education: Rethinking Teaching and Learning with a Virtual Teaching Assistant*. In A. Adoui and B. Seilstad (Eds.), *Artificial Intelligence, Academic Integrity, and the Internationalization of Higher Education: Navigating Innovation and Ethics*. Springer Publishers.

---

## 🛠 Skills

Python • FastAPI • PostgreSQL/pgvector • Docker • NGINX • React.js • Azure • AWS

### 🔒 Note on Private Work
Most of my professional projects are hosted in private organization repositories and cannot be shared publicly due to confidentiality.  
To give recruiters and collaborators an overview of my skills, I’ve included selected highlights, screenshots, code snippets, and project summaries in this portfolio.

If you’d like to learn more about my work with:

- **Virtual Teaching Assistant (VTA)** — AI-driven education platform deployed on UT System’s private cloud
- **Noodle Agent** — real-time voice-enabled AI assistant deployed at Noodle Seed

I’m happy to discuss the technical details, architecture, and outcomes during interviews or by request.

