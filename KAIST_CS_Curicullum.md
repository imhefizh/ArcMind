# KAIST-Like CS Curriculum

## List of Contents

- [Fondasi & Umum](#fondasi--umum)
  - [A. Calculus I](#a-calculus-i)
  - [B. Linear Algebra](#b-linear-algebra)
  - [C. Probability & Statistics](#c-probability--statistics)
  - [D. Physics I (basic)](#d-physics-i-basic)
  - [E. Programming Basics (Intro to Programming)](#e-programming-basics-intro-to-programming)
  - [F. Discrete Mathematics](#f-discrete-mathematics)
  - [G. English / Communication for Engineers](#g-english--communication-for-engineers)
- [Core CS](#core-cs)
  - [A. Data Structures](#a-data-structures)
  - [B. Algorithms (Design & Analysis)](#b-algorithms-design--analysis)
  - [C. Programming Languages (Theory & Practice)](#c-programming-languages-theory--practice)
  - [D. Computer Organization / Architecture](#d-computer-organization--architecture)
  - [E. Operating Systems (+ Lab)](#e-operating-systems--lab)
  - [F. Automata Theory / Formal Languages](#f-automata-theory--formal-languages)
  - [G. Software Engineering](#g-software-engineering)
  - [H. Design Project / Capstone](#h-design-project--capstone)
- [Systems / Networks Track](#systems--networks-track)
  - [A. Computer Networks](#a-computer-networks)
  - [B. Distributed Systems](#b-distributed-systems)
  - [C. Embedded Systems](#c-embedded-systems)
  - [D. Computer Architecture (advanced)](#d-computer-architecture-advanced)
  - [E. High-Performance Computing](#e-high-performance-computing)
- [Databases & Backend](#databases--backend)
  - [A. Database Systems](#a-database-systems)
  - [B. Cloud Computing](#b-cloud-computing)
  - [C. Backend / API Design](#c-backend--api-design)
- [Web / Mobile / HCI](#web--mobile--hci)
  - [A. Web Application Development](#a-web-application-development)
  - [B. Mobile Computing](#b-mobile-computing)
  - [C. Human-Computer Interaction (HCI) / UI-UX](#c-human-computer-interaction-hci--ui-ux)
- [AI / Machine Learning Track](#ai--machine-learning-track)
  - [A. Machine Learning](#a-machine-learning)
  - [B. Deep Learning](#b-deep-learning)
  - [C. Computer Vision](#c-computer-vision)
  - [D. Natural Language Processing](#d-natural-language-processing)
- [Security / Crypto](#security--crypto)
  - [A. Information Security / Network Security](#a-information-security--network-security)
  - [B. Cryptography](#b-cryptography)

---

## Fondasi & Umum

### A. Calculus I

Target skill: Diferensial & integral dasar; pemahaman limit dan aplikasi kalkulus pada optimisasi dan analisis algoritma.

Sumber belajar: Khan Academy (Calculus), MIT OCW Calculus.

Project exercise: Analisis laju perubahan untuk model performa sederhana (mis. optimisasi waktu eksekusi fungsi).

Indikator kelulusan: Bisa menyelesaikan soal integral/diferensial standar dan gunakan kalkulus untuk memecahkan problem optimisasi sederhana.

### B. Linear Algebra

Target skill: Vektor/matriks, transformasi linier, eigenvalues/vectors — wajib untuk ML & graphics.

Sumber belajar: 3Blue1Brown “Essence of linear algebra”, Gilbert Strang (MIT OCW).

Project exercise: Implementasi PCA dari nol; aplikasi reduksi dimensi pada dataset kecil.

Indikator kelulusan: Menjelaskan dan menerapkan dekomposisi matriks serta PCA untuk dataset nyata.

### C. Probability & Statistics

Target skill: Distribusi, ekspektasi, varians, estimasi, uji-hipotesis, dasar Bayesian.

Sumber belajar: StatQuest, Khan Academy, “Think Stats” oleh Allen Downey.

Project exercise: Analisis statistik eksperimen kecil + confidence interval; bayesian update dasar.

Indikator kelulusan: Menyusun laporan analisis statistik untuk dataset dan menjelaskan kesimpulan dengan uji statistik.

### D. Physics I (basic)

Target skill: Mekanika dasar & problem solving fisika yang membangun intuisi numerik.

Sumber belajar: MIT OCW Physics I, buku Serway.

Project exercise: Simulasi fisika sederhana (projectile motion) dengan numerik.

Indikator kelulusan: Memecahkan soal mekanika klasik dengan metode analitik dan numerik sederhana.

### E. Programming Basics (Intro to Programming)

Target skill: Logika pemrograman, flow control, struktur data dasar, debugging.

Sumber belajar: CS50 (Harvard), freeCodeCamp, Python docs.

Project exercise: Buat mini aplikasi CLI yang membaca file, memproses data, dan menampilkan output.

Indikator kelulusan: Menyelesaikan tugas pemrograman dasar tanpa kesalahan logika dan menulis doc singkat.

### F. Discrete Mathematics

Target skill: Graphs, logic, set theory, combinatorics, proof techniques.

Sumber belajar: Rosen – Discrete Mathematics, MIT OCW discrete math.

Project exercise: Implementasi graph traversal & analisis kompleksitas; formulasi proof untuk masalah kecil.

Indikator kelulusan: Menyusun pembuktian sederhana dan menerapkan konsep diskrit dalam kode.

### G. English / Communication for Engineers

Target skill: Presentasi teknis, technical writing, komunikasi lintas-budaya.

Sumber belajar: Coursera: Technical Writing, Toastmasters / latihan mikro-presentation.

Project exercise: Buat technical blog post + presentasi 10 menit tentang proyek teknis.

Indikator kelulusan: Presentasi jelas + tulisan teknis yang dapat dimengerti non-spesialis.

---

## Core CS

### A. Data Structures

Target skill: Implementasi list, stack, queue, tree, heap, hash table, balanced tree; runtime analysis.

Sumber belajar: CLRS (chapters terkait), MIT 6.006, GeeksforGeeks untuk implementasi.

Project exercise: Implement library data-structure (BST, heap) + benchmark operasi.

Indikator kelulusan: Menyelesaikan problem coding kompleks (mis. leetcode medium-hard) dan menjelaskan trade-offs.

### B. Algorithms (Design & Analysis)

Target skill: Greedy, divide & conquer, dynamic programming, graph algorithms, complexity proofs.

Sumber belajar: CLRS, MIT OCW Algorithms, Stanford algorithms lectures.

Project exercise: Solve set of algorithmic problems; buat analisis waktu & ruang; implement Dijkstra, flow, DP optimizations.

Indikator kelulusan: Correct and optimal solutions untuk 3-5 problem nontrivial beserta analisis kompleksitas.

### C. Programming Languages (Theory & Practice)

Target skill: Paradigms (functional, imperative), parsing, semantics, memory model.

Sumber belajar: “Types and Programming Languages” (Pierce) (intro parts), Crafting Interpreters.

Project exercise: Implement simple interpreter or compiler for tiny language.

Indikator kelulusan: Interpreter yang menjalankan subset bahasa dan dokumentasi semantics.

### D. Computer Organization / Architecture

Target skill: Representasi data, CPU pipeline, memory hierarchy, instruction set design.

Sumber belajar: Patterson & Hennessy (Computer Organization), nand2tetris untuk praktek.

Project exercise: Bangun simulasi CPU sederhana atau implementasi subset ISA di emulator.

Indikator kelulusan: Bisa menjelaskan pipeline hazards, caching, dan tunning sederhana.

### E. Operating Systems (+ Lab)

Target skill: Process/thread, scheduling, virtual memory, concurrency, file systems.

Sumber belajar: Tanenbaum / Operating Systems: Three Easy Pieces (OSTEP).

Project exercise: Kernel module kecil / implementasi thread scheduler / user-space file system (FUSE).

Indikator kelulusan: Project lab berjalan dan mengatasi race condition, deadlock demonstrable.

### F. Automata Theory / Formal Languages

Target skill: Finite automata, regex, pushdown automata, Turing machines, decidability.

Sumber belajar: Sipser – Theory of Computation, MIT theory lectures.

Project exercise: Konstruktor parser + automata visualizer kecil.

Indikator kelulusan: Menyelesaikan problem formal (bukti closure properties, CFG to PDA conversion).

### G. Software Engineering

Target skill: SDLC, design patterns, testing, code review, maintainability.

Sumber belajar: “Clean Code” (Robert C. Martin), Coursera Software Development Lifecycle, Google SRE/readings.

Project exercise: Team project dengan repo Git, CI, code review, unit/integration tests.

Indikator kelulusan: Repo siap production-like: tests, CI passing, documented API, issue tracker.

### H. Design Project / Capstone

Target skill: Full-cycle product development: ide → design → implement → deploy → iterate.

Sumber belajar: Project-based courses, agile practices readings.

Project exercise: Produk SaaS/APP dengan deployment dan user testing.

Indikator kelulusan: Deliverable working product + demo + report + peer evaluation.

---

## Systems / Networks Track

### A. Computer Networks

Target skill: TCP/IP stack, routing, switching, sockets, network programming.

Sumber belajar: Kurose & Ross, Stanford CS144.

Project exercise: Implement simple HTTP server + simulate congestion control.

Indikator kelulusan: Demonstrable networked app + explanation of protocol behaviors.

### B. Distributed Systems

Target skill: Consensus, replication, CAP theorem, fault tolerance, distributed algorithms.

Sumber belajar: “Designing Data-Intensive Applications” (M. Kleppmann), MIT distributed systems lectures.

Project exercise: Mini replicated key-value store with leader election (Raft).

Indikator kelulusan: System tolerates node failures; tests for consistency/availability trade-offs.

### C. Embedded Systems

Target skill: Low-level programming, hardware interfacing, RTOS basics.

Sumber belajar: Embedded systems course materials, ARM docs, “Make: Electronics”.

Project exercise: Microcontroller project (sensor + actuator + simple control loop).

Indikator kelulusan: Device works reliably and code meets timing constraints.

### D. Computer Architecture (advanced)

Target skill: Pipeline, superscalar, memory coherence, SIMD, branch prediction.

Sumber belajar: Hennessy & Patterson advanced chapters, ISAs docs.

Project exercise: Simulate out-of-order execution or optimize code for cache.

Indikator kelulusan: Bisa profile/optimize kernel code and explain microarchitectural effect.

### E. High-Performance Computing

Target skill: Parallel programming (MPI/OpenMP), profiling, vectorization.

Sumber belajar: Parallel programming guides, HPC course notes.

Project exercise: Parallelize numerical workload and measure speedup.

Indikator kelulusan: Demonstrable scaling and analysis of Amdahl/scale inefficiencies.

---

## Databases & Backend

### A. Database Systems

Target skill: Relational model, SQL, transactions, indexing, query planning.

Sumber belajar: Garcia-Molina textbook, PostgreSQL docs, Stanford DB class.

Project exercise: Implement small SQL engine or build optimized schema + explain query plans.

Indikator kelulusan: Benchmarked CRUD app with ACID properties and optimized queries.

### B. Cloud Computing

Target skill: Virtualization, containers, orchestration (Kubernetes), infra-as-code.

Sumber belajar: Cloud provider docs (GCP/AWS/Azure free tiers), Kubernetes docs.

Project exercise: Deploy microservice architecture with CI/CD pipeline.

Indikator kelulusan: Deployed service with autoscaling + documented infra code.

### C. Backend / API Design

Target skill: REST/GraphQL design, authentication, rate-limiting, scalability basics.

Sumber belajar: Build APIs with Node/Express or frameworks, RFCs.

Project exercise: Full auth-backed API + docs + tests + simple frontend.

Indikator kelulusan: API passes integration tests and handles concurrent requests.

---

## Web / Mobile / HCI

### A. Web Application Development

Target skill: HTML/CSS/JS modern, SPA concepts, state management, accessibility.

Sumber belajar: MDN Web Docs, React docs, freeCodeCamp.

Project exercise: Full SPA with auth, CRUD, responsive design, deploy (Netlify/Vercel).

Indikator kelulusan: Usable SPA + responsive + passes accessibility checklist.

### B. Mobile Computing

Target skill: Mobile UI/UX, lifecycle, performance, platform constraints.

Sumber belajar: Android docs, iOS docs, Flutter tutorials.

Project exercise: Cross-platform mobile app that uses local storage and network sync.

Indikator kelulusan: App runs on devices, handles offline syncing, basic UX polish.

### C. Human-Computer Interaction (HCI) / UI-UX

Target skill: User research, prototyping, usability testing, design principles.

Sumber belajar: Don Norman, Coursera HCI courses, Figma practice.

Project exercise: User-tested prototype + iterations based on feedback.

Indikator kelulusan: Usability report + improved prototype with metric improvements.

---

## AI / Machine Learning Track

### A. Machine Learning

Target skill: Supervised/unsupervised learning, model evaluation, feature engineering.

Sumber belajar: Andrew Ng Coursera, Hands-On ML (Aurélien Géron).

Project exercise: Build end-to-end ML pipeline: ingestion → feature → model → deploy.

Indikator kelulusan: Model with validated metrics + reproducible pipeline.

### B. Deep Learning

Target skill: Neural nets, CNNs, RNNs/Transformers, optimization techniques.

Sumber belajar: DeepLearning.AI, PyTorch tutorials, Stanford CS231n.

Project exercise: Implement CNN for image classification; finetune transformer for small NLP task.

Indikator kelulusan: Achieve baseline SOTA or clear improvement on dataset with analysis.

### C. Computer Vision

Target skill: Image processing, object detection, segmentation, evaluation metrics.

Sumber belajar: OpenCV docs, CV courses (Stanford, Coursera).

Project exercise: Object detector or segmentation project with evaluation.

Indikator kelulusan: Validated model on dataset + deployment demo.

### D. Natural Language Processing

Target skill: Tokenization, embeddings, sequence models, transformer usage.

Sumber belajar: NLP course (CS224n), Hugging Face tutorials.

Project exercise: Fine-tune pretrained transformer for classification or QA.

Indikator kelulusan: Model with demonstrable improvement vs baseline + evaluation metrics.

---

## Security / Crypto

### A. Information Security / Network Security

Target skill: Threat models, cryptographic primitives, secure coding, network defenses.

Sumber belajar: OWASP guides, cryptography courses (Dan Boneh), network security lectures.

Project exercise: Hardened web app + threat model doc + pen-test notes.

Indikator kelulusan: Vulnerabilities mitigated + report of security posture.

### B. Cryptography

Target skill: Symmetric/asymmetric crypto, hashes, PKI, secure protocols.

Sumber belajar: Dan Boneh’s crypto course, Applied Cryptography texts.

Project exercise: Implement secure comms demo (TLS-like handshake simplified) and analyze.

Indikator kelulusan: Correct crypto protocol demo + explanation of security guarantees.
